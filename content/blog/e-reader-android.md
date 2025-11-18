+++
title = "E-reader First Android"
date = 2025-11-18
[taxonomies]
writings=["Reports"]
+++

_This time it is a really simple thing. But, I wanted to document it anyway._

### Why?
I am constantly in a quest of making things better for the sake of reducing my media addiction.
The only social media with "status updates" that I use is [polymaths.social](https://polymaths.social/@iac) a `gotosocial`(Fediverse) instance.
I have stopped using Facebook and Instagram a while back and I block the shorts section of my YouTube.

Having done that, the addiction has shifted from a whole range of social media to just watching YouTube videos till the end of time.
So, I decided to make YouTube only show what I search with no home page or even the subscription page. _(Though, I can still access them with a toggle.)_
I also don't want to consume YouTube on my phone. And I want to read books instead of consuming visual media.

### So?

For a while now my YouTube recommendations were full of e-readers, dumb phones and modding kindles.
I did like the idea and checked the price of those devices (Classic Consumerism).
Since, they are manufactured in small quantities, they are very expensive for the specs they offer.
And most of them are not available in my region.
But, my stubbornness, or maybe my addiction is so bad that I need to have what I want and if I don't I just can't do any other work properly.

Then I thought, I cannot convert something dumb to something advanced by itself but the reverse is possible.
I remembered a device called [BOOX Palma](https://shop.boox.com/products/palma) and since it is an android device I thought I could recreate it with my own phone that I already have.
From the [kindle modding video](https://www.youtube.com/watch?v=Qtk7ERwlIAk) I also realised that `KOReader` is not just an old, weirdly made e-book reader app.

_So, I decided to base the entire personality of my phone to the `KOReader` app._

### Preparing Android

Since I use a `custom ROM` it is much easier for me to customize my device to a greater potential than vanilla android that google offers. I use [Project Infinity X](https://projectinfinity-x.com/).

1. I wanted the `B&W` monochromatic look of e-readers, so, the first thing I did is set a [white background](https://wallpapercave.com/wp/wp6681156.jpg) as my wallpaper.
1. The `Monet color` is set to be monochromatic.
1. In `Accessibility > Color and motion > Use color correction > Grayscale` is turned on. (I just disable this via a quick setting toggle when I need colours.)
1. In `Accessibility > Color and motion > Remove animations` is turned on.
1. In `Display > Color > Night Light` is turned on.
1. Dark Theme is disabled.
1. `Display > Display cutout` is set to `notchbarkiller`. (_This setting is generally in `Developer Options` if not in `Display` but, the exact name: `notchbarkiller` may not be present._)
1. Additionally, a `Reading Mode` can be made with the features like: disabling notifications and setting the screen as greyscale. But, I wanted to control those settings individually.

### Installing the Launcher

1. I decided to install [InkOS](https://github.com/gezimos/inkOS/) as my launcher because it adds on to the e-reader aesthetic.
1. I removed all the shortcuts of the home screen and set `Books` as the only shortcut there.
1. From the app drawer I changed the name of the apps to their generic names and hid most of the unused apps.
1. Configured `swipe left` gesture to `KOReader` and `swipe right` to `App Drawer`.
1. Finally I set `InkOs` as my default launcher.

<div class="gallery" style="display:flex; flex-wrap: wrap;">
  <img src="/images/e-reader-android/homescreen.png" style="width: 15rem; padding:1rem;border-radius: 1.75rem;">
  <img src="/images/e-reader-android/lockscreen.png" style="width: 15rem; padding:1rem;border-radius: 1.75rem;">
</div>

<div style="text-align: center">

_`Home Screen` with a single books shortcut and `Lock Screen` with a big digital clock._

</div>

### Setting Up `KOReader`

1. Installed `KOReader` [from GitHub](https://github.com/koreader/koreader) and set it to `Start with: last file`.
1. Disabled `Cover Browser Plugin` and installed [Project: Title](https://github.com/joshuacant/ProjectTitle).

<div class="gallery" style="display:flex; flex-wrap: wrap;">
  <img src="/images/e-reader-android/koreader.png" style="width: 15rem; padding:1rem;border-radius: 1.75rem;">
  <img src="/images/e-reader-android/app-drawer.png" style="width: 15rem; padding:1rem;border-radius: 1.75rem;">
</div>

<div style="text-align: center">

_`KOReader` with `The Shape of Design` (Swiping Left) and the `App Drawer` (Swiping Right)._

</div>

_In `KOReader` individual books have their individual settings but once everything is set up, scaled and aligned properly for the book that you want to read, only reading it will be the remaining task._


### Final Touches

The phone is normally is in `DND` mode, but when it is not, I have disabled the notifications of almost every app except signal.
I have installed [`uBlock Origin`](https://ublockorigin.com/) on `firefox` and have hidden different UI elements that I don't want to see e.g. YouTube Shorts.
The quick settings panel is now cleared and only the very essential settings like `WIFI`, modes and colour correction toggles are there.

All in all, I have made reading books the easiest task on the phone and added friction to everything else by locking the apps so I have some time to realise what I actually want to do.

_I aim to read more books with this setup. Wish me luck!_
