#import "@preview/rubber-article:0.4.2": *
#set page(paper: "a4")
#set text(lang: "en")

#show: article

#maketitle(
  title: "A Creative Suite that Doesn't Trap You.",
  authors: ([Spandan Guragain (#link("https://scientiac.space")[#underline("scientiac.space")])],),
  date: [10#super("th") July, 2025],
)

#align(center+horizon,
[#outline(title: "Table of Content")]
)

#pagebreak()

#set page(columns: 2)

= Introduction
== Why am I writing this?
Learning the tools used in the industry is a must have to eventually "earn". I am a student. I will go into debt if I subscribe to the Adobe Suite because, I don't earn much.

I have grown to like MacBooks because apple has poured good money to optimize both the hardware and software for their product. That means, unlike windows which has to be made for hundreds of vendors and millions of different kinds of laptops, macOS only needs to be made for a few devices each year. Giving more flexibility to optimize their product to perform better. That leads to macOS feeling smappier and smoother than windows on more powerful hardware. 

\
*_In an ideal world it would be Linux on hardware that I can pick and choose to my needs and likings. But, for now, to get the best middle ground between freedom and good hardware optimization a MacBook seems good._*

\
Most of us just pirate the software we use. Like, Adobe, and Microsoft Suite. But, in the long run, I feel like it will backfire us. Since, we will be so invested with the program that it will be an extension of us for work and the company basically can do whatever they want since we can't stop using their software. *That is why you can still pirate things, and Adobe/Microsoft act like they don't know about piracy.*

And you might already have heard about adobe charging fees to cancel a subscription, adding policies saying anything you store in their creative cloud gives them permission to do anything with your project. *Basically instead of you using adobe, adobe uses you.*

\

== So all proprietary software is bad?
No! not at all. Software developers have the right to make their project proprietary. But, once a company achieves monopoly over the industry it is bad for everyone except for that company. I like the fact that DaVinci Resolve exists and it has most features on their free version. Since, students can learn the software and pay to get more out of the same software without being handicapped for being in the free version. That's why I like *DaVinci Resolve* even if it is proprietary.

== Why many European governments are prioritizing FOSS

*FOSS/FLOSS*: _Free/Libre and Open Source Software_

\
Denmark, Germany's northern state of Schleswig‑Holstein, local government of Lyon in France are some examples that want digital sovereignity and are switching to alternatives that are FOSS and home grown in EU.

\
Many open source communities are based on EU; Open Suse, KDE, LibreOffice, Typst (The Software that I am using to write this document.), are some of the example (FOSS) software they fund and promote. They are also known for their digital privacy and security laws. Software suites like `Proton` are trusted to be more private and secure than the suite from any monopolistic company. 

\
There have been various movements for freedom, privacy, and ownership throughout the history. From human rights movement eradicating slavery to feminism movement rooting for equality, we have always fought for the freedom of choice, we have always discouraged unhealthy syndicates, from governments in power to companys in power and people in power. No decision from a single entity will is trustable unless a mass is involved, where everyone has a say in it and everyone is listened to. In this world full of smartscreens, the software controls you, and you cannot refuse to realize we are going to the same situations we have gone through before:

\
Ignorance $-->$ Brainwash $-->$ Realisation $-->$ Fightback $-->$ Freedom (_In Progress_)

\
Why ignore and give into it in the first place, when we can prevent it before it becomes a problem. (_And it already has begun to become a problem._)

= Industry

The industry seems to heavily rely on *Adobe* and *Microsoft* for media creation and documentation. Both of these are monopolies. Adobe software ranges from *Photo Manipultaion*, *Video Manipulation* and even *Document* (Adobe Acrobat for PDFs). Microsoft has *Windows* and the *Office Suite*. Recently, *Google* too has jumped into the office suite terretory with live collaborative features. So, the industry standards are monopolistic.

\

_I personally am not in the media industry. This is all a one man research so I will be very happy to get some creative criticisms from people in the industry._

= What can we Do?

As much as it is easy to just pirate stuff, the short term benifits only lead to you losing your freedom or worse not being able to leave the bubbled walled garden ever.

So, instead of pirating, we should be leaning toward open standards and libre software. And if there are no alternatives that might fulfill your needs then consider choosing trusted companies in the industry who aren't a monopoly and offer good products.

== Appliations 

*Note: _Most of the applications below are available cross platform for all three major Operating Systems._* I started writing this with mac in my mind so, in case of that not being the case I will suggest their counterparts too.

\
Before installing anything, I suggest you to install #link("https://brew.sh/")[#underline("homebrew")], and if you are on Windows there is `chocolatey` or `scoop` that you can use. They are package managers which help you manage (_Install, Uninstall, Update_) your applications seamlessly. I personally have only used `homwbrew` in the terminal (_It isn't scary, it may even be intuitive if you ask me._) but there is a GUI for it called #link("https://aerolite.dev/applite")[#underline("applite")]. Or you can install it via `homebrew` itself by running the follwing command in the terminal:

\

```zsh 
brew install --cask applite
```

\


*_All the applications I am going to suggest will be available from `homebrew` except one._*

\
So, lets talk about applications now. Ironically starting from a proprietary app, hoping this powerful tool doesn't go toward the route of enshittification.

=== #link("https://www.raycast.com/")[#underline("Raycast")] (Launcher)


```zsh 
brew install --cask raycast
```

\
It is a replacement to spotlight, but hear me out. It and it's extension ecosystem has all the applets you probably want to install on your macbook anyway. And you can do almost anything from finding files and applications to setting hotkeys and managing clipboard, it can do it all and more. _I feel like I am selling you this, but I am impressed by this app._ My pet peeve is that it isn't FOSS but since the ecosystem around it is good, I give it a pass. (_How I feel about `obsidian` is how I feel about it._)

\
On that \"note\" #super("get it?") maybe checkout #link("https://obsidian.md/")[#underline("Obsidian")] too, it is a great note taking app. 

\
_At the time of writing this, raycast is available for windows from a waitlist, or you can use #link("learn.microsoft.com/en-us/windows/powertoys/install")[#underline("Powertoys")]. For linux, you might be able to extend rofi for the functionalities, but again you can do almost anything you want on linux yourself, but do check #link("https://ulauncher.io/")[#underline("Ulauncher")] if you want a pre made experience._

=== #link("https://zen-browser.app/")[#underline("Zen")] (Browser)

```zsh 
brew install --cask zen
```
\
Yeah, I am recommending a beta browser. It is #link("https://www.firefox.com/en-US/")[#underline("Firefox")] under the hood, which I personally use but with my own twist on it's UI. Since, I think tweaking the default UI isn't everyone's forte, I recommend using `zen`. It is a good browser, it has many features, it respects your privacy, it has vertical tabs and the thing I like the most is that it has a *Focused Mode* which hides all the elements of the browser and only shows the website in it's full glory.
\ _And if you really really really want to use Chrome for some reason, I recommend `Brave Browser`. Make sure to disable all the unwanted crypto stuff from the settings and fully set it up to become minimal before using it and enable the toggles as you need it._

=== #link("https://iina.io/")[#underline("IINA")] (Media Player)

```zsh 
brew install --cask iina
```
\
I would have recommended `VLC` or `mpv` but since we are talking about apple here, I recommend using IINA because it uses mpv under the hood which can play anything you throw at it. No need to worry about player supporting media codecs or anything, just enjoy your media. 

_For other OS you can use #link("https://mpv.io/")[#underline("mpv")] or #link("https://www.videolan.org/")[#underline("VLC")]._

Another bonus app that I personally use with my media player is a torrent client, to watch videos preserved by people of the internet for everyone by everyone.

==== webtorrent-cli
```zsh 
brew install webtorrent-cli
```
\
It is a command-line (terminal) application, but you don't want anything more than that. (_Unless you want to seed the torrents yourself, in that case that you may use `transmission`, `qBittorrent` or `Webtorrent Desktop`_)
\
But I am recommending a _command line tool_, to make it easy to stream the torrents directly to IINA.

\
```zsh
webtorrent --iina "<Your Magnet/Torrent Link Goes Here>"
```
\
Just use the above command with the `magnet link` to the video/audio you want to stream and it will start playing immidiately in `IINA`.

== Video Manipulation
=== #link("https://www.blackmagicdesign.com/products/davinciresolve")[#underline("DaVinci Resolve")] (Video Manipulation)

This one isn't installable by `brew` so, you have to install it yourself manually. This is the industry standard video editor used in film making by many film studios. It has a free version that doesn't handicap you but gives you almost all the tools you need while learning video editing for free. I think it is a no brainer program which is better than Adobe to start with.

There are other open source editors as well that you can start with:
+ #link("https://kdenlive.org/")[#underline("Kdenlive")]
+ #link("https://www.openshot.org/")[#underline("OpenShot")]
+ #link("https://www.shotcut.org/")[#underline("Shortcut")]

=== #link("https://getrecut.com/")[#underline("Recut")] (Simple Video Editing)
```zsh 
brew install --cask recut
```
\
_"Recut removes the silence automatically in seconds."_ Is how they advertise their app in their website. It is a simple free app that help you piece and keep the parts of the video you need and discard the rest.


=== #link("https://handbrake.fr/")[#underline("HandBrake")] (Video Conversion)
```zsh 
brew install handbrake
```
\
_HandBrake is an open-source tool, built by volunteers, for converting video from nearly any format to a selection of modern, widely supported codecs._ It help you convert video from one codec to another, one format to another, that is all.


=== #link("https://www.blender.org/")[#underline("Blender")] (3D Modeling and Animating)
```zsh 
brew install --cask blender
```
\
Blender is one of the most complex apps that is also Free and Open Source (FOSS) which is used in the industry for making animated movies. 

\
_*‘Flow’ won the animated feature in the $97^(t h)$ Academy Award.*_ Which was made entirely using Blender.

\
Blender also has a video editor in it, which might not be intuitive to beginners because it aligns more to blender's usage and keymappings. Learning to use blender will add another unique skill to your skill set and if you really get into it you might never have to pay for using the tool you use for work.

== Image Manipulation and Management
=== #link("https://www.photopea.com/")[#underline("Photopea")] (Web Based Photo Editing)
Well, talking about image manipulation, `photoshop` has been the king, so a free web based alternative for it is `photopea` which supports editing photos saved in the photoshop format too.

=== #link("https://www.gimp.org/")[#underline("GNU Image Manipulation Program (GIMP)")] (Image Manipulation)
```zsh 
brew install --cask gimp
```
\
It is one of the oldest FOSS projects for photo editing and since it doesn't follow the "Adobe Style Keymappings" it may not feel intuitive to use for people who have come from that background. But, it is very extensible, if you want you can even make it looks, feel and work like photoshop (not one to one) using the plugin called `photogimp`.

=== #link("https://krita.org/en/")[#underline("Krita")] (Digital Painting Program)
```zsh 
brew install --cask krita
```
\
It is a very powerful drawing app with also supports animating and some amount of image manipulation. I can't say too much about it because It is too good to be true, yet it is true. 

\
_Free in these apps doesn't necessarily mean free of cost but freedom to use. So, when you are able to, you can donate to them with your will. If these apps are available in AppStore with a price tag, feel free to support them by buying the app. But make sure the app is uploaded by the actual developers and not some random person who is trying to get money from someone else's work._

=== #link("https://inkscape.org/")[#underline("Inkscape")] (Vector Graphics)
```zsh 
brew install --cask inkscape
```
\
Inkscape is a vector graphics application that is mostly used in making graphics that scale. It comes in handy for making many things like web graphics, technical diagrams, icons, creative art, logos, maps and many more things.

\
I designed my logo using it.
#align(center, [
  #image("logo.png", width: 40%)
])

=== #link("https://www.darktable.org/")[#underline("Darktable")] (Raw Developer and Editor)
```zsh 
brew install --cask darktable
```
\
_`Darktable` is an open source photography workflow application and raw developer. A virtual lighttable and darkroom for photographers. It manages your digital negatives in a database, lets you view them through a zoomable lighttable and enables you to develop raw images and enhance them._

\
What I know is that it is used for enhancing and manipulating colours of your photos. It obviously does more than that and has more features than it's Adobe counterpart except maybe "AI" features. If you only tweak colors of your photos and don't put any other thing that wasn't originally on the photo, then your whole workflow will be complete inside `darktable`.

If darktable overwhelms you then there also are other applications like `RawTherapee` and `ART` that might fit your needs.

\
*I know you have to use Photoshop/Adobe because everyone does, but please don't use Adobe.* I know  #underline[#link("https://m.youtube.com/watch?v=lm51xZHZI6g")[this video]] is intemidating but I just love his art style and what he had to say.

=== #link("https://www.digikam.org/")[#underline("digikam")] (Digital Asset Manager)
```zsh 
brew install --cask digikam
```
\
_digiKam is an advanced open-source digital photo management application that runs on Linux, Windows, and macOS. The application provides a comprehensive set of tools for importing, managing, editing, and sharing photos and raw files._

It helps you organize your photos and videos, even across multiple drives.

== Documentation and Presentations

=== #link("https://www.libreoffice.org/")[#underline("LibreOffice")] (Office Suite)
```zsh 
brew install --cask libreoffice
```
\
It is an offline office suite that just works. Unless you have to deal with obscure Microsoft visual basic macros in your suite (thankfully, people normally don't use/need it) LibreOffice can do everything you want from an office suite. If you want scripting you can do it, in `visual basic` as well as in `python`. So, there is absolutely no reason to use Microsoft Office unless someone forces you to, or if you already paid for it.

=== #link("https://www.onlyoffice.com/")[#underline("OnlyOffice")] (Office Suite)
```zsh 
brew install --cask onlyoffice
```
\
Only office is another free and open source office suite that packs in a `word-processor`, a `presentation-software`, and a `spreadsheet`. I might call it lighter than LibreOffice with most of the tools you need in an office suite present in a single package without needing to switch apps.


=== #link("https://www.canva.com/")[#underline("Canva")] (Template Based Online Design Suite)
I have recently come to love canva to make presentations. But apart from that it can be used to design a plethora of things ranging from social media posts to cards and banners. It is free to use and is very intuitive. 

=== #link("https://www.overleaf.com/")[#underline("LaTeX")] (Typesetting and Document Creation)
This is somewhat of a professional tool to make documents which is also free and open source. All the white paper journals prefer $\L\a\T\e\X$ as the preferred format to submit white-papers in. It exports to PDFs and you can make any kind of document you want with it.
It does have a learning curve and once all your regular settings and formats are perfectly set up, creating and formatting documents will start feeling like a breeze.

=== #link("https://www.typst.app/")[#underline("Typst")] (Typesetting and Document Creation)
I would call this a hybrid of latex, markdown and Google Docs. It is a Typesetting Software just like LaTeX but it isn't as difficult to use as LaTeX. Things are fairly intuitive. I would not be writing this report if I had to use something like Google Docs or LaTeX.

Seriously, I wouldn't be writing this at all if Typst had not made it so fun to do so. I love typst but, you do have to learn how to work with it. It is not as easy as clicking and dragging things in Google Docs and not as difficult to use as LaTex. If you do not play "submitting white papers to journals" regularly, I recommend learning and using typst for your reports and assignments. 

\
_It is about time for journals to start recognizing typst and accepting it as a viable format to submit papers in._

\
It takes a few days to get used to and know what you need to do to align things in the places you want. But after you make a template/+workflow to work on, you will be writing your reports in the speed of thought, only bottleneck being your typing speed.

= At the End 
This is a non-exhaustive list and I will probably update this list with more tools and apps from your feedback. I don't think anyone in today's world is "non-technical", technology is everywhere and we need to use the right tools for the job. We need to have an open mind to learn anything and everythin we need on your journey without being trapped/stuck with one.

\
*You might think that you get what you pay for.* These software is paid by the people with their voice and donations for everyone to use freely. They are priceless and hence are purest with no ill intentions. (_No! Making money isn't an ill intention, manipulating people and forcing things on you without consent and choice is._)


#colbreak()
*_I hope you will help me add more items on this list with your feedback. Anything that is freely available to use without any catch can be included. It should not hurt in the long term._*

\
*Note:* _All the underlined words contain links to the respective software which you can click on and navigate to._

\
You can send the feedback on my email: \
#link("mailto://spandan@scientiac.space")[#underline("spandan@scientiac.space")]
