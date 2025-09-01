+++
title = "Static Site Webmentions"
date = 2025-08-31
[taxonomies]
writings=["Reports"]
+++

I had set up Webmentions on my static site [a while back](/syndications/posse-2024-11-05/). It was because I really like the concept of a completely custom yet static social media where it's not instant but it's regular communication. But, the drawback of any kind of unique and DIY technology is not having people that actually use it. 

Ironically, after the setup, I only have received Webmentions from myself during testing (_I am not counting the mastodon likes that propagated through [Bridgy Fed](https://fed.brid.gy/web/scientiac.space))_. I am still sceptical about Bridgy Fed because It isn't what I wanted Webmentions to be, I didn't want any connections to a social media but I wanted to test the workings so I connected it.

## How I Do It
My blog is a static site and being static comes with the cost of not being able to continuously listen to incoming messages. So, Webmentions don't really work on a static site. At least that's what I thought at first, then I found out about [webmention.io](https://webmention.io/).

It's sort of like a retrofitted static site to support Webmentions.

### Components
- A Static Site Generator [www.getzola.org](https://www.getzola.org/)
- Indieweb Compatibility [indiewebify.me](https://indiewebify.me/)
- Send webmentions [webmention.app](https://webmention.app/)
- Receive Webmentions [webmention.io](https://webmention.io/)
- Render Webmentions [keats.github.io/tera](https://keats.github.io/tera/)
- Runner [GitHub actions](https://docs.github.com/en/actions)

#### A Static Site Generator
I am using `zola` as my static site generator and I love it. The comfort of just writing in `markdown` and letting `zola` do the heavy lifting to generate feeds is awesome. Generating an Atom/RSS feed is a must. This is needed by webmention.app to send webmentions by reading all your posts.

#### Indieweb Compatibility
To make an Indieweb compatible static site you need to pass these tests from [indiewebify.me](https://indiewebify.me/).
1. Web Sign In - This helps you sign in to indieweb services with your domain. *You must have your own registered domain name.*
2. `h-card` and `h-entry` classes on homepage as well as on the "post" page.
3. Ability to send Webmentions.

#### Sending Webmentions
I use my generated Atom feed and webmention.app [CLI](https://webmention.app/docs#using-the-command-line) to send Webmentions.
It is as simple as running: 
```bash
npx webmention https://scientiac.space/atom.xml --limit=0 --send
```

#### Receiving Webmentions
To receive Webmentions you need a perpetual listening server and the service is provided by [webmention.io](https://webmention.io/).
1. Sign into webmention.io with your domain. It will use [indielogin.com](https://indielogin.com/). This requires you to have at least an email address on your h-card.
2. Go to `sites` and in the table click on `Get Setup Code` which will give you a tag to put on your HTML template header.
3. Test that you actually can receive Webmentions by mentioning yourself in a site and running the above command. It should show up in the dashboard of `webmention.io`.

#### Render Webmentions
You can now fetch the json feed of the Webmentions you have received in webmention.io using the following command and replacing the `${WEBMENTION_TOKEN}` with your own token.

```bash
curl -s "https://webmention.io/api/mentions.json?token=${WEBMENTION_TOKEN}" -o webmentions.json
```

This json file can be used to render the Webmentions on your website using your static site generator's feature to read json files.

I made and activity page in zola where all the webmention activities are listed.
  
<details>
<summary>Zola Template HTML</summary>

This is located at `templates/activity.html` and used at `content/activity/_index.md`

`templates/activity.html`
```html
{% extends "base.html" %}

{% block content %}

<div class=section>

{% set data = load_data(path="webmentions.json", format="json") %}

<div class="activity-box">
{% for links in data.links %}
    {% set trimmed_path = links.target | trim_start_matches(pat="https://" ~ config.extra.url ~ "/") | trim_end_matches(pat="/") %}
    {% set relative_path = trimmed_path ~ ".md" %}
    {% set target_page = get_page(path=relative_path) %}
    {% if not links.source is starting_with("https://" ~ config.extra.url) %}
        {% if links.activity.type == "like" %}
            <div class="mention-profile like">
                <code><a href="{{ links.source }}">{{ links.data.author.name }}</a> liked <a href="{{ links.target }}">{{ target_page.title }}</a></code>
            </div>
        {% endif %}

        {% if links.activity.type == "link" %}
            <div class="mention-profile link">
                <code><a href="{{ links.source }}">{{ links.data.author.name }}</a> mentioned <a href="{{ links.target }}">{{ target_page.title }}</a></code>
            </div>
        {% endif %}

        {% if links.activity.type == "reply" %}
            <div class="mention-profile reply">
                <code><a href="{{ links.source }}">{{ links.data.author.name }}</a> replied to <a href="{{ links.target }}">{{ target_page.title }}</a></code>
            </div>
        {% endif %}
    {% endif %}
{% endfor %}
</div>

</div>

{% endblock content %}
```

`content/activity/_index.md`
```md
+++
template = "activity.html"
+++
```

</details>

Webmentions are rendered by zola utilizing the `load_data` function of tera templating engine. The fetched `webmention.json` file is parsed and formatted. [_Can be seen in `activity.html` in the above template._]

#### Runner
To rebuild the site by fetching new Webmentions we will need a runner that does the process repeatedly in said amount of time. This is where GitHub actions come in. I have three workflows `send-webmentions.yaml`, `zola.yml` and `fetch-webmentions.yaml` which as the name says, sends Webmentions from the site, builds the site using zola and fetches received Webmentions from `webmention.io`.

For fetching I have saved my webmention.app api key as a secret in GitHub and use that in the workflow file.

First put your token form webmention.io in `settings > security > secrets and variables > actions > new repository secret` of your GitHub repo with the name `WEBMENTION_TOKEN`.

Then, the workflow files should be put in place.

<details>
<summary>Workflow Files</summary>

This is located at `.github/workflows/` from the root of your repository.

First workflow fetches new mentions every 30 minutes.  
`fetch-webmentions.yml`
```yml
name: Fetch Webmentions

on:
  push:
    branches:
      - main
  schedule:
    - cron: '*/30 * * * *'  # Runs every 30 minutes
  workflow_dispatch:  # Allows manual triggering of the workflow if needed

jobs:
  fetch_webmentions:
    runs-on: ubuntu-latest

    steps:
      - name: Checkout Repository
        uses: actions/checkout@v4

      - name: Fetch Webmentions
        env:
          WEBMENTION_TOKEN: ${{ secrets.WEBMENTION_TOKEN }}
        run: |
          mkdir -p static/webmention
          # Fetch webmentions and save (overwrite) to a single file
          curl -s "https://webmention.io/api/mentions.json?token=${WEBMENTION_TOKEN}" -o static/webmentions.json

      - name: Commit and Push Webmentions
        run: |
          git config --global user.name "github-actions[bot]"
          git config --global user.email "github-actions[bot]@users.noreply.github.com"
          git add static/webmentions.json
          git commit -m "Update webmentions" || echo "No changes to commit"
          # Pull latest changes from main with rebase to avoid conflicts
          git pull --rebase origin main
          # Now push the updated branch
          git push
```

Second workflow builds the site from the source after fetching the Webmentions.  
`zola.yml`
```yml
name: Zola on GitHub Pages

on:
  workflow_run:
    workflows: ["Fetch Webmentions"]
    types:
      - completed

jobs:
  build:
    name: Publish site
    runs-on: ubuntu-latest
    steps:
    - name: Checkout main
      uses: actions/checkout@v4
    - name: Build and deploy
      uses: shalzz/zola-deploy-action@v0.19.2
      env:
        GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

Third workflow sends Webmentions from the detected links in the newly generated `atom.xml`.  
`send-webmentions.yml`
```yml
name: Send Webmentions
on:
  workflow_run:
    workflows: ["Zola on GitHub Pages"]
    types:
      - completed
jobs:
  send_webmentions:
    name: Send Webmentions with Delay
    runs-on: ubuntu-latest
    steps:
      - name: Checkout Repository
        uses: actions/checkout@v4
        
      - name: Wait for Delay
        run: sleep 60  # Waits for 1 minute (60 seconds) before running the next steps
        
      - name: Read Site URL from CNAME
        id: get_url
        run: |
          SITE_URL=$(cat static/CNAME)
          echo "site_url=$SITE_URL" >> $GITHUB_OUTPUT
        
      - name: Install Webmention Package
        run: npm install @remy/webmention
        
      - name: Send Webmentions
        run: npx webmention https://${{ steps.get_url.outputs.site_url }}/atom.xml --limit=0 --send
```


</details>

## Sending Webmentions
In order to send Webmentions, the content should be formatted accordingly. In general I like to utilize three activities to send Webmentions.
[_It is preferred to only use one activity for one mention._]

### Mention
One can mention a site using webmention by simply putting the link to the page being mentioned.
The site will get the webmention if it supports it.

```md
[Void Bed](https://flux.carboxi.de/void-bed/) by flux.
or
<a href="https://flux.carboxi.de/void-bed/">Void Bed</a> by flux
```

### Like
One can like a post using webmention by formatting the link as follows:

```md
I like how flux talks about his bed in <a class="u-like-of" href="https://flux.carboxi.de/void-bed/">Void Bed</a>
```

I like how flux talks about his bed in <a class="u-like-of" href="https://flux.carboxi.de/void-bed/">Void Bed</a>

### Reply
One can reply to a post by formatting the link and the text as follows:

```md
<a class="u-in-reply-to" href="https://flux.carboxi.de/void-bed/">Void Bed</a>

I feel the same about my bed. Nice writing flux!
```

### Bridges

  Though I have connected this site to the fediverse with Bridgy Fed, it is opt in using a zola shortcode. Because, I want the articles to have a "blog interaction" from other peoples blog but not from the social media. But, I do use bridgy on my short posts sometimes. [Webmentions](/syndications/posse-2024-11-05/) and [Linux is/not Difficult](/syndications/posse-2025-02-04/) are some posts I have used bridgy with and they also work as example posts to see how different webmention activities look like in my website.

## Lastly
I had forgotten about webmentions and interactions on my site, but I recently read a post from Joel titled [Webmentions but manual (for Jekyll)](https://joelchrono.xyz/blog/webmentions-but-manual/) and people giving names to the interactions really caught my attention. I haven't given it a name because mine are just Webmentions but I feel like Webmentions are still a good option to have _(with much less spam)_ for interaction if it isn't connected to an actual social media.
Some other posts I read were:
[_At least for the sake of just pinging them._]

[Implementing Community Echoes](https://notes.jeddacp.com/implementing-community-echoes/)  
[Blog interactions](https://forkingmad.blog/blog-interactions/)  
[What Others Said...](https://kevquirk.com/blog/what-others-said)

I hope webmention on blogging sites takes off. Or maybe it has already taken off. I want the future where everyone can express themselves with their own taste and creativity not having to compromise personality for protocols.
