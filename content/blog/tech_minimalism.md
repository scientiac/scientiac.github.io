+++
title = "Tech Minimalism"
date = 2025-05-29
[taxonomies]
writings=["Articles"]
+++

## Firstly

I don't really have hardware that is minimal. It could be minimal for some people, but having a working smartphone
and a pretty good laptop isn't minimal, judging by the plethora of things I can do within these devices.

A huge chunk of my personality is influenced by Linux and the principles/philosophies I have learned to interact with the
Linux and Open Source ecosystem. KISS, UNIX, DRY, YAGNI, etc. These are some of the things I have been exposed to
for too many times. I see that they all have one thing in common; **_Minimalism_**.

## What are thoseeeee?

Let's start with **KISS** because I like the sound of it,

#### KISS

**Keep It Simple Stupid** or one of the variations below implies that simplicity should be a design goal.

<details>
<summary>Variations</summary>

* Keep It Super Simple  
* Keep It Simple, Silly  
* Keep It Short and Simple  
* Keep It Short and Sweet  
* Keep It Simple and Straightforward  
* Keep It Small and Simple
* Keep It Simple, Sweetie
* Keep It Stupidly Simple
* Keep It Sweet and Simple

</details>

#### UNIX

**UNIX** philosophy is a set of norms and philosophical approaches to minimalist, modular software development.
The most emphasized concept is,"Write programs that do one thing and do it well."

#### DRY

The **Don't Repeat Yourself** principle is stated as "Every piece of knowledge must have a single,
unambiguous, authoritative representation within a system". What I understand by it is that, redundancy
makes a system confusing and unintuitive.

#### YAGNI

"You aren't gonna need it" or "You ain't gonna need it" is something that arose from _Doing the simplest
thing that could possibly work_.

#### etc

"End of thinking capacity" or I don't want to lengthen my blog yapping about acronyms and want to
come to the actual topic.

## So, what did you do?

I am trying to follow these principles in my daily life and in using tech in general. Partly because I
want to live outside these devices more, and mostly because I don't like the "attention economy" and big
tech constantly trying to pull our attention and make us watch more ads. In general, "I don't want to be
the product." I guess the reasons for partly and mostly should have been the other way around, but I'll get
the same outcome anyway.

For starters, I bought a watch, just so that I don't have to keep pulling out my phone and check the time only to see
a notification and get sucked into the rabbit hole. That has made keeping the phone in my bag instead of in my pocket
possible.

> _That's the only thing I bought._

Everything else is software minimalism now. I removed my previous ROM and installed LineageOS on my phone. And, I
removed Windows and installed Linux. (Technically, I have been using Linux for years by now, but I did remove windows.)

### How are your devices set up?

Let's start with my phone because it was the thing I used the most while being aware that I am using it the most, and it was
wasting my time more than I was utilizing it.

#### LineageOS (Android)

The first thing I will see when I pick up my phone is the **lock screen**, and it is set up such that my screen will not light
up when I receive a notification, but, the notifications are visible with content in the lock screen because it is easier for
me to decide if I need to respond immediately, or it can wait.

I have my phone _almost perpetually in DND mode_ with the exception of my parents being in favorite and being able to ring me anytime.
For others, if I receive two calls within a 15-second interval, I'll get the call. And all text messages and notifications are
disabled while the DND Mode is on.

Now, let the phone be unlocked. I have **YAM Launcher** installed, and I will only be able to see the time on the
home screen. Upon a swipe up, the app list opens up with only text and edited to represent what it'll do instead of
the app's name.

<video src="/images/tech_minimalism/yam.webm" controls style="width: 15rem;"></video>

<details>
<summary>App List</summary>

1. Browser - Firefox Nightly
2. Calculator
3. Camera
4. Contacts
5. Devices - KDE Connect
6. Email - Thunderbird Daily
7. Files
8. Gallery - Aves Gallery
9. Messaging  
10. Packages - Obtainium
11. Passwords - Bitwarden (Keyguard)
12. Phone
13. Reader - Readest
14. Recorder
15. Settings
16. Signal - Signal FOSS
17. Terminal - Termux
18. Videos - VLC
19. YouTube - NewPipe (Tubular)

</details>

Inside the **browser** I have **UBlock Origin** installed, and it blocks all ads and redirects and also YouTube. YouTube links
on my phone are automatically redirected to **NewPipe** which has no feeds and suggestions, only search and play.

**KDE Connect** is for transferring files from my phone to my laptop and vice versa and sometimes clipboard contents, but If
I really need it; I could **ssh** into either of the devices and get what I want, (in my local network). I used to use tailscale
as a VPN, but I have not felt the need of it for now.

**Obtainium** is to install packages and updates to my apps, since LineageOS doesn't have an app store. It gets apps straight from sources like
git-services, fdroids-repos and web-links. I can get the apps from right where the bakers baked it.

Every other app is pretty self-explanatory and they do their job well.

#### NixOS (Linux)

I have a full-fledged desktop environment (DE) and a minimal window manager (WM) installed on my laptop. I normally live on my window manager
but sometimes it doesn't cut it, or I have to configure it (which takes some time) so I just fall back on the DE and get the work done. Yes it
breaks from the "DRY" principle, but WM and DE are like my DND Focus and Normal Mode for the laptop.

**Nix Package Manager** also works somewhat like obtainium (I am oversimplifying this a lot.) I can get the apps straight from source and compile it
on device or I can get the packages from the NixOS repos.

Technically, the terminal and the browser should be sufficient for everything. But I like my dedicated apps.

#### Window Manager (Niri)

My window manager is set up in such a way that everything is hidden by default. If I hover over the correct places on my screen, I will get what I
want to quickly access like brightness, volume, mic sensitivity, time, battery and the tray.

<video src="/images/tech_minimalism/zen-mode.webm" controls></video>

And the scrolling tiling window management is by far the best window management workflow I have experienced till now. I can categorize
my windows in 2 dimensions (Technically all 3, but I rarely want to use the third.) and choose to focus on 1–2 windows while all other windows
are one swipe away. I can't explain it by just yapping about it here, you need to use it to feel it.

#### Desktop Environment (GNOME)

It looks similar to niri at first glance, but I have tweaked it with extensions to be minimal. I don't open it unless I am playing a game from **Steam** or using an app that only supports XOrg because niri doesn't have XWayland support and the workarounds are a bit clunky. Or, if niri crashes for some reason.

#### Browser(s)

1. Firefox (Gecko) - I have my own userCSS and that is the workflow I want in my browser, minimal by default, powerful when needed.
2. QuteBrowser (Blink/QTWebEngine) - It is almost what I wanted in a chromium based browser, if only it had support for Firefox extensions.
3. Epiphany (WebKit) - It's a WebKit browser when I need to test things for a WebKit environment.

**Firefox** is the only browser that has extensions support on my device. I have UBlockOrigin, Unhook, SponsorBlock, VimiumC and Bitwarden installed
and if not all, UBlockOrigin and Bitwarden are the absolute must-haves for me. [_I am spoiled by UBlockOrigin._]

**QuteBrowser** is my current primary browser because I feel like it uses less power than Firefox does. Also, it is minimal and uses the
whole area for web rendering and not browser components like url-bar and buttons and menus, and also it is entirely keyboard
oriented with VIM-style workflow. I have set its AdBlock to use UBlockOrigin's block list, and it does pretty well, but not as well as UBlockOrigin.
Unlike Firefox, I have left the YouTube feed to show up in it, but I don't play YouTube on the browser but instead utilize MPV and `yt-dlp` to watch
on my video player of choice. (The YouTube player is automatically paused and hidden using a greasemonkey script, which is the closest to extensions that Qute has.)

**Epiphany** is a browser I almost never use but keep for the sake of testing stuff on WebKit when doing web development.

#### Applications

I said "app" for mobile but "application" for desktop because they are exactly how they sound like.

<details>
<summary>App List</summary>

1. Browsers - We already discussed them.
2. Terminal - Ghostty + Alacritty (I couldn't choose between features and minimalism on this one.)
3. Inkscape - Vector Graphics
4. Emacs - Note-taking using org-roam and for almost nothing else.
5. Neovide - Neovim dedicated GUI where I do all my text editing and programming.
6. NewsFlash - RSS Reader
7. Thunderbird - Email Client
8. Steam - For _Hollow Knight_ which I play once a month
9. Valent - A gnome implementation of KDE Connect
10. Fractal - A matrix client
11. Foliate - Book Reader
12. Sioyek - PDF Reader
13. Fragments - Torrent Client
14. Refine - The New Gnome Tweaks
15. Gnome Apps - Weather, Software, Files, Audio Player, Discs, Camera, Calculator, etc.
16. Spotify + Spicetify - Music Streaming
17. Telegram - Chat
18. Signal - Chat

</details>

The things I mostly use are QuteBrowser and Ghostty and I can prolly do the entirety of what I do within these two apps.
(Maybe I'll use Firefox instead of Qute if I was forced to use only two apps.)

## Social Media

Yes! It deserves its own topic. It's not like I don't use social media, how did you find this blog?
But I don't use social media as much. I am not a saint, and I do use things like Microsoft, Meta, and Google
Services and Social media they offer because that's where everyone is.

My favourite is **The Fediverse;** it's calm, and I can get caught up with everyone I follow within 5 minutes of scrolling,
not even that much. But as much as I love you guys, I still have real-life friends who don't use and don't know about the Fediverse.

So, I have to use **Facebook Messenger** to contact almost anyone I know. But I have my Facebook ID
deactivated to only use Messenger and don't have Instagram and also WhatsApp.

I made a **LinkedIn** account a while back, and I sometimes scroll through it to check what everyone
is up to. I do post once in a while but have not done anything worthy of posting there lately.

I have **Telegram** just to check in with custom ROM communities and mobile Linux communities, but I rarely do that nowadays.

**Signal** for the dearest who do use it. It's what I use for texting people and have it on my phone as well.

Lastly, let's talk about **YouTube**. I didn't consider it a social media and used to use the full-fledged YouTube apps, but
I got so addicted to it that I could not stop scrolling, looking for videos to watch. I spent most of the time of the
day on it. But it is definitely a social media, and it definitely should be used and not consumed. And I hate shorts with
passion. Most of my device usage was for YouTube and YouTube only. I am still a YouTube addict, but I am consuming less and
using it more each day.

## Lastly

Though, reading all this (if you really did) made you feel like it is definitely not a minimalist setup. It really is.
I feel like I have fixed my social media overconsumption with this setup. At least I am getting more work done and also
getting a good sleep.

I used to take my phone to bed and scroll YouTube till I slept, and I would always sleep the next day (i.e., after 00:00)
but now I get sleep at 10 and will be asleep within 10 minutes. (That is, unless something is bugging me.)

My phone does absolutely nothing to distract me, and I don't have my laptop at all times. The only thing I don't have that is
necessary is banking apps, but not having that has made me spend even less, so it's still a win.

> I have been writing this since 04:45 and it's 08:45, I'll be back after breakfast.  
> 09:06 I'm Back!

Yeah! I don't think I have more to write about it. The flow got interrupted. I had to do something for my addiction, and it
is what I did. Hopefully I don't fall back into the same trap again. Meet you guys in the next blog; byeeeee.
