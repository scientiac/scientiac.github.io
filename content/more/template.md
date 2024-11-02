+++
title = "Demo Page"
+++

## Markdown

Text can be **bold**, *italic*, ~~strikethrough~~, and ***~~all at the same time~~***.

[Link to another page](@/blog/you.md).

There should be whitespace between paragraphs[^1].

# Heading 1
## Heading 2
### Heading 3
#### Heading 4
##### Heading 5
###### Heading 6

This is a normal paragraph[^2] following a header.

😭😂🥺🤣❤️✨🙏😍🥰😊

```
Long, single-line code blocks should not wrap. They should horizontally scroll if they are too long. This line should be long enough to demonstrate this.
```

> "Original content is original only for a few seconds before getting old"
> > Rule #21 of the internet

- Item 1
- Item 2
  - Item 2.1
  - Item 2.2
- Item 3
- `Item 4`

1. Perform step #1
2. Proceed to step #2
3. Conclude with step #3

- [ ] Milk
- [x] Eggs
- [x] Flour
- [ ] Coffee
- [x] Combustible lemons

[![Male mallard duck](https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/Male_mallard_duck_2.jpg/800px-Male_mallard_duck_2.jpg)](https://upload.wikimedia.org/wikipedia/commons/2/24/Male_mallard_duck_2.jpg)

| Mare         | Rating            | Additional info  |
| :----------- | :---------------- | :--------------- |
| Fluttershy   | Best pone         | Shy and adorable |
| Apple Jack   | Good pone         | Honest and nice  |
| Pinkie Pie   | Fun pone          | Parties and ADHD |
| Twilight     | Main pone         | Neeerd           |
| Rainbow Dash | Yes               | Looks badass     |
| Rarity       | Fancy pone        | Generous         |
| Derpy Hooves | *M u f f i n s*   | [REDACTED]       |

```rust
let highlight = true;
```

***

## Extra

### KaTeX

This Theme can render LaTeX using the [KaTeX](https://katex.org) library. It can be enabled using the `extra.katex` config variable.

```latex
$$\relax f(x) = \int_{-\infty}^\infty\hat{f}(\xi)\,e^{2 \pi i \xi x}\,d\xi$$
```

$$\relax f(x) = \int_{-\infty}^\infty\hat{f}(\xi)\,e^{2 \pi i \xi x}\,d\xi$$

```latex
$\relax f(x) = \int_{-\infty}^\infty\hat{f}(\xi)\,e^{2 \pi i \xi x}\,d\xi$
```

$\relax f(x) = \int_{-\infty}^\infty\hat{f}(\xi)\,e^{2 \pi i \xi x}\,d\xi$

### Shortcodes

This Theme provides a few useful [shortcodes](https://www.getzola.org/documentation/content/shortcodes/) that simplify some tasks. They can be used on all pages.

#### Alerts

[GitHub-style](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax#alerts) alerts. Simply wrap the text of desired alert inside the shortcode to get the desired look.

Available alert types:

- `note`: Useful information that users should know, even when skimming content.
- `tip`: Helpful advice for doing things better or more easily.
- `important`: Key information users need to know to achieve their goal.
- `warning`: Urgent info that needs immediate user attention to avoid problems.
- `caution`: Advises about risks or negative outcomes of certain actions.

```jinja2
{%/* alert(note=true) */%}
-> Alert text <-
{%/* end */%}
```

{% alert(note=true) %}
Useful information that users should know, even when skimming content.
{% end %}

{% alert(tip=true) %}
Helpful advice for doing things better or more easily.
{% end %}

{% alert(important=true) %}
Key information users need to know to achieve their goal.
{% end %}

{% alert(warning=true) %}
Urgent info that needs immediate user attention to avoid problems.
{% end %}

{% alert(caution=true) %}
Advises about risks or negative outcomes of certain actions.
{% end %}

#### Images and Videos

By default images and videos come with some generic styling, such as rounded corners and shadow. To fine-tune these, you can use shortcodes with different variable combinations.

Available variables are:

- `spoiler`: Blurs image until hovered over/pressed on, useful for plot rich game screenshots.

```jinja2
{{/* image(url="image.png", alt="This is an image", spoiler=true) */}}
```

<figure>
{{ image(url="https://files.catbox.moe/lk7nee.jpg", alt="Portal Gun blueprint", spoiler=true) }}
<figcaption>Image with an alt text, hidden behind a spoiler</figcaption>
</figure>

For videos it's all the same except for a few differences: `no_hover` and `url_min` variables are not available.

Additionally, the following [attributes](https://developer.mozilla.org/en-US/docs/Web/HTML/Element/video#attributes) can be set:

- `autoplay`: Start playing the video automatically.
- `controls`: Display video controls such as volume control, seeking and pause/resume.
- `loop`: Play the video again once it ends.
- `muted`: Turn off the audio by default.
- `playsinline`: Prevent the video from playing in fullscreen by default (depends on the browser).

```jinja2
{{/* video(url="video.webm", alt="This is a video", controls=false, autoplay=true, loop=true) */}}
```

<figure>
{{ video(url="https://interactive-examples.mdn.mozilla.net/media/cc0-videos/flower.webm", alt="Red flower wakes up", controls=true) }}
<figcaption>WebM video example from MDN</figcaption>
</figure>

<figure>
{{ video(url="https://upload.wikimedia.org/wikipedia/commons/transcoded/0/0e/Duckling_preening_%2881313%29.webm/Duckling_preening_%2881313%29.webm.720p.vp9.webm", alt="Duckling preening", full_bleed=true, controls=true) }}
<figcaption>Duckling preening</figcaption>
</figure>

#### YouTube

Allows to embed a YouTube video using youtube-nocookie.

Available variables are:

- `autoplay`: Whether the video should autoplay.
- `start`: On which second video should start.

```jinja2
{{/* youtube(id="0Da8ZhKcNKQ") */}}
```

{{ youtube(id="0Da8ZhKcNKQ") }}

#### Mastodon

Allows to embed a Mastodon post.

Available variables are:

- `host`: The instance on which the post resides. If not set, it will fallback to the one set in the `[extra.comments]` section of `config.toml`.
- `user`: The poster. If not set, it will fallback to the one set in the `[extra.comments]` section of `config.toml`.
- `id`: The ID of the post, usually at the end of the URL.

```jinja2
{{/* mastodon(host="toot.community", user="sungsphinx", id="111789185826519979") */}}
```

{{ mastodon(host="toot.community", user="sungsphinx", id="111789185826519979") }}


### Figure Captions (`<figcaption>`)

```markdown
<figure>
  -> Whatever content <-
  <figcaption>Caption of content above</figcaption>
</figure>
```

<figure>

  ![The Office](https://i.ibb.co/MPDJRsT/ImMAXM3.png)
  <figcaption>The Office where Stanley works, it has yellow floor and beige walls</figcaption>
</figure>

### Accordion (`<details>`)

```markdown
<details>
  <summary>Accordion title</summary>
  -> Contents here <-
</details>
```

<details>
  <summary>Reveal accordion</summary>

  Get it? I know, it's an awful pun.
  ![Piano Accordion](https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/PianoAccordeon.jpg/916px-PianoAccordeon.jpg#transparent#no-hover)

</details>

### Side Comment (`<small>`)

```html
<small>Small, cute text that doesn't catch attention.</small>
```

<small>Small, cute text that doesn't catch attention.</small>

### Abbreviation (`<abbr>`)

```html
<abbr title="American Standard Code for Information Interchange">ASCII</abbr>
```

The <abbr title="American Standard Code for Information Interchange">ASCII</abbr> art is awesome!

### Aside (`<aside>`)

```html
<aside>

-> Contents here <-
</aside>
```

<aside>

Quill and a parchment

<img class="transparent no-hover" style="margin-block-end: 0; border-radius: 0;" alt="Quill and a parchment" src="https://upload.wikimedia.org/wikipedia/commons/thumb/b/b9/%D7%A7%D7%9C%D7%A3%2C_%D7%A0%D7%95%D7%A6%D7%94_%D7%95%D7%93%D7%99%D7%95.jpg/326px-%D7%A7%D7%9C%D7%A3%2C_%D7%A0%D7%95%D7%A6%D7%94_%D7%95%D7%93%D7%99%D7%95.jpg" />
</aside>

A quill is a writing tool made from a moulted flight feather (preferably a primary wing-feather) of a large bird. Quills were used for writing with ink before the invention of the dip pen, the metal-nibbed pen, the fountain pen, and, eventually, the ballpoint pen.

As with the earlier reed pen (and later dip pen), a quill has no internal ink reservoir and therefore needs to periodically be dipped into an inkwell during writing. The hand-cut goose quill is rarely used as a calligraphy tool anymore because many papers are now derived from wood pulp and would quickly wear a quill down. However it is still the tool of choice for a few scribes who have noted that quills provide an unmatched sharp stroke as well as greater flexibility than a steel pen.

### Keyboard Input (`<kbd>`)

```html
<kbd>⌘ Command</kbd>.
```

To switch the keyboard layout, press <kbd>⌘ Super</kbd> + <kbd>Space</kbd>.

### Mark Text (`<mark>`)

```html
<mark>Marked text</mark>
```

You know what? I'm gonna say some <mark>very important</mark> stuff, so <mark>important</mark> that even **bold** is not enough.

### Deleted and Inserted Text (`<del>` and `<ins>`)

```html
<del>Something deleted</del> <ins>Something added</ins>
```

<del>Text deleted</del> <ins>Text added</ins>

### Sample Output (`<samp>`)

```html
<samp>Sample Output</samp>
```

<samp>Sample Output</samp>

### Inline Quotation (`<q>`)

```html
<q>Someone said something</q>
```

Blah blah <q>Inline Quote</q> hmm.

### Unarticulated Annotation (`<u>`)

```html
<u>Gmarrar mitsakes</u>
```

<u>Yeet</u> the <u>sus</u> drip while <u>vibing</u> with the <u>TikTok</u> <u>fam</u> on a cap-free boomerang.

### External Links

```html
<a class="external" href="https://example.org">External link</a>
```

<a class="external" href="https://example.org">Link to site</a>

### Spoilers

```html
<span class="spoiler">Some spoiler</span>
```

You know, <span class="spoiler">This Theme is a pretty dumb name.</span> I know, crazy.

With `solid` class:

```html
<span class="spoiler solid">Some spoiler</span>
```

You know, <span class="spoiler solid">This Theme is a pretty dumb name.</span> I know, crazy.

### Buttons Dialog

```html.j2
<div class="buttons">
  <a href="#top">Go to Top</a>
  <a class="colored external" href="https://example.org">Example</a>
</div>
```

<div class="buttons">
  <a href="#top">Go to Top</a>
  <a class="colored external" href="https://example.org">Example</a>
</div>

With `centered` and `big` classes:

```html.j2
<div class="buttons centered">
  <button class="big colored">Do Something…</button>
</div>
```

<div class="buttons centered">
  <button class="big colored">Do Something</button>
</div>

[^1]: Footnote
[^2]: [Footnote (link)](https://example.org)
