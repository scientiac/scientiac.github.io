+++
title = "Beautifying Firefox with \"chrome\""
date = 2024-08-20
[taxonomies]
writings=["Reports"]
+++

My mind goes hyperactive whenever exams are near, this semester is no different. I always find something very interesting to do every time an exam is around. This semester, I went into a rabbit hole of customizing Firefox to make it minimal (or immersive), I'd say.

<div class="gallery" style="display:flex; flex-wrap: wrap;">
  <img src="/images/firefox-userstyle/normal-home.png" style="width: 19rem; padding:0.25rem;border-radius: 1.75rem;">
  <img src="/images/firefox-userstyle/normal-tabs.png" style="width: 19rem; padding:0.25rem;border-radius: 1.75rem;">
</div>

<div style="text-align: center">

**img:** *homepage and tabs-expanded view*

</div>

![normal-website](/images/firefox-userstyle/normal-website.png)

<div style="text-align: center">

**img:** *webpage view*

</div>

I am very much into customization, and I like to keep changing things around. When I was using gnome in arch Linux some years back I had come across [rafaelmardojai/firefox-gnome-theme](https://github.com/rafaelmardojai/firefox-gnome-theme) which I immediately installed to make my system consistent with the *libadwaita* style. That was the time when I realized the repo had almost 100% CSS in the GitHub language thingy bar. I knew what CSS was but never bothered to look into the Firefox theme, it simply worked.

Fast-forward to a few months ago, the arc browser had the internet going crazy about it. I did like the UI being minimal and focused on viewing websites, hiding the settings that would normally show up all the time. Since you had to make an account to just use the browser, I didn't use it. Then I went searching for themes that replicated the UI on Firefox itself. I found [KiKaraage/ArcWTF](https://github.com/KiKaraage/ArcWTF) which I used for a while. This time I modified the CSS and restarted Firefox and kept on updating the CSS and restarting Firefox until I got what I wanted. I hated that I had to restart Firefox to apply the small change in `userChrome.css` that I was going to repeat because I didn't know what I was doing.

I am currently using `nix`, so, eventually this was to come. I had to configure my Firefox with `home-manager`. This caused me to leave behind my arcWTF css because there was no easy way to simply put the chrome folder in its place with nix. But, there was a way to write `userChrome` within the nix configuration. This way of changing CSS was even more of a hassle because I had to first write it inside nix with no LSP for CSS, then I had to evaluate the nix file to put things into place and then restart Firefox.

Aaah! That was really clunky but, I then made single `userChrome.css` and `userContent.css` files and then just imported them with nix to read the file instead of writing the CSS inside the `.nix` file, and it was a little better. Now started my journey to make the most minimal and at the same time good Firefox userstyle in a single `.css` file. I then found [simplefox](https://github.com/migueravila/SimpleFox) a goldmine for minimal Firefox config, but there was a single issue, I was used to the tabs being tree style and on the left sidebar. So, I installed [sidebery](https://addons.mozilla.org/en-US/firefox/addon/sidebery/) and got some CSS from arcWTF to make the collapsed sidebar work.

Then I got a new laptop, which currently has windows, but It has a gorgeous screen which in comparison to the previous laptop is the difference of 70% more DCI-P3 with a 3k OLED screen. I copied my CSS from my NixOS machine, and it was working pretty well. Until I had an idea to improve it further. For days, I kept editing the CSS and restarting my Firefox to change the `.css` with hit and trial getting more failures than success in the style actually being like I intended it to be. And then yesterday I was fed up with doing that and actually searched if there was a way of doing that without restarting Firefox (live).

Surprise, surprise, it was not just possible but intentional. I wished I had known about this before. You just do the following things:

1. Open the `hamburger menu`.
2. Go to `more tools`.
3. Click on ``web developer tools``.
The web developer interface will open, now on the top right side of the toolbox,
4. Click on the `3 dot menu`.
5. Click on `settings`.
6. Enable two options:
```

    enable remote debugging

```
```

    enable browser chrome and add-on debugging toolboxes.

```
7. Then go to `hamburger menu > more tools > browser toolbox` or the shortcut `Ctrl+Shift+Alt-I`.
8. Then it'll ask for confirmation with the following prompt:
```

    An incoming request to permit remote debugging connection was detected. A remote client can take complete control over your browser!

    Client Endpoint: 127.0.0.1:51146
    Server Endpoint: 127.0.0.1:51141

    Allow connection?

```
9. Allow it and the toolbox opens. Go to the `style editior` from the menu.
10. Find `userChrome.css` and enjoy live tinkering. When you are done, just click on save or `Ctrl+S` and it is permanent.
11. For `userContent.css` just come to the Firefox homepage and hit `Ctrl+Shift+C`, go to the style editor and find the `userContent.css`.

## Finally

I created this beautiful Firefox userstyle with a focus on minimalism and web content. It's called [scifox](https://github.com/scientiac/scifox) because duh! It's my Firefox I will call it whatever I want. I am also working on a version with hidden panels that show up on hover to make it even more minimalistic and immersive. If you want to check that out, it's on the [immersive](https://github.com/scientiac/scifox/tree/immersive) branch.

<div class="gallery" style="display:flex; flex-wrap: wrap;">
  <img src="/images/firefox-userstyle/immersive-home.png" style="width: 19rem; padding:0.25rem;border-radius: 1.75rem;">
  <img src="/images/firefox-userstyle/immersive-tabs.png" style="width: 19rem; padding:0.25rem;border-radius: 1.75rem;">
</div>

<div style="text-align: center">

**img:** *immersive homepage and tabs-expanded view*

</div>

![website](/images/firefox-userstyle/website.png)

<div style="text-align: center">

**img:** *immersive webpage view*

</div>

I have grown to prefer this minimal UI, and I absolutely love [Adaptive Tab Bar Colour](https://addons.mozilla.org/en-US/firefox/addon/adaptive-tab-bar-colour/) for making the whole UI follow the style the creator of the website intended. And one more thing, I am in love with [uBlock Origin](https://addons.mozilla.org/en-US/firefox/addon/ublock-origin/) and can't live without it. **So, if you are not a Firefox user give Firefox a go, I know it'll not disappoint you and even if it does Firefox is like Linux, you can pick and plug features make it work the way you want.**

> Looking for the URL bar in webpage? Hover where it should be and you might just find it.
