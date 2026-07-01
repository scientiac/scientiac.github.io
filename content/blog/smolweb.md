+++
title = "A too Brief Intro to Smolweb"
date = 2026-06-30
[taxonomies]
writings=["Articles"]
+++

{% alert(tip=true) %}
If you prefer to listen or watch instead of reading [highly unlikely since you came here, but still] I tried creating a _[video](https://youtu.be/GjBRhMTN2WI)_ for the first time 
{% end %}

There is so much more to the internet than your Facebook, Instagram, Twitter, Google, and chat GPTs. And these things are not known by the general masses, not because it's a quality problem, but instead it's a discovery problem. 

Honestly, the content in these places are more human and heartwarming, if not high quality. That is, if you go on the right places. The internet is full of people and every person is unique. You might get a feeling of awe or you might come across very horrifying things.

The primary way that you might know to access the internet is via a web browser like Chrome, or Firefox if you are old school or Safari if you are rich or if you are a nerd like me, Helium or Zen in a declaratively configured dendritic pattern NixOS installation. 

Instead of just exploring the web via web browsers, we also can explore it via different special clients and proxies and even via the terminal.

Apart from HTTP/HTTPS, which is the regular internet you interact with daily, there are various other protocols and specs with different features like Gopher, Gemini, Tor, Torrent, SoulSeek, I2P, Finger, and SSH.

While these protocols are simply just a medium to share data and information, we will talk about them in order of ease of access, heartwarming and fun to complex and actual dark places with the possibility of very illegal things. 

The easiest place to access is the normal web. 

## The Surface Web

There are various circles of people's blogs called webrings. Some of them are:

- [An IndieWeb Webring](https://xn--sr8hvo.ws/)
- [CSS JOY](https://cs.sjoy.lol/)
- [1.44MB Webring](https://1.44mb.club/)
- [Blenderweb](https://blenderweb.org/)

There are various directories where you can find different people sharing their things in their own way. You can find people with interesting hobbies in:

- [ooh.directory](https://ooh.directory)
- [nownownow.com](https://nownownow.com)
- [Blog of the .Day](https://blogofthe.day)

If you really want social media or feed style place, there are:

- [bubbles.town](https://bubbles.town)
- [lobste.rs](https://lobste.rs)
- [news.ycombinator.com](https://news.ycombinator.com)

Or if you prefer the more modern meaning of social media, there are various platforms like Mastodon, Pixelfed, Gotosocial, PeerTube, etc in the fediverse. 

If I keep talking about the regular web and the things and places you can access, we will be here for a while. So let's go to some place smaller or should I say smoller. 

## The Smolweb

The smolweb is a place born because the surface web became heavy and bloated. It aims to be accessible from even the simplest and low powered devices.

Starting from the oldest of all, 

### The Gopher Protocol
It is from the early stages of world wide web. It even is older than HTTP. It can be called the predecessor of the world wide web. I don't want to dive into the technical details of how the Gopher protocol works, but to the user it is just plain text with hyperlinks, no styles, no headings, no underlines, not even inline links. It is still beautiful with people using ASCII art to style their text.

![Terminal Gopher](/images/smolweb/gopher-lynx.png)

<center>

*My gopher site accessed from the terminal using lynx*

</center>

Before going to the spiritual successor to the gopher protocol, let's quickly explore the simple little protocol that is finger.

### Finger

Finger was developed back in 1971 to solve the needs of the users who wanted information on other users of the network. The users would have a .project and .plan plain text files on their home directory which contained text written by the user about their project and plans they were working on as implied by the file name.

If you want to have your own finger profile, the easiest way is to make it via happynetbox.com.

You can access the text you wrote there using the finger program from the terminal by running `finger username@hostname` on the terminal with the finger program installed. To see my finger project and plan, you can run `finger scientiac@tilde.team`.

![Terminal Finger](/images/smolweb/finger-term.png)

<center>

*My simple finger status read from a terminal*

</center>

Okay. Now!

### Gemini Protocol

Like I said earlier, it is the spiritual successor to Gopher protocol. For the user, unlike Gopher's plain text, the Gemini protocol uses `.gmi` markup syntax, which is almost a subset of Markdown.

I say almost because the links cannot be inline and there still are no tables. But you now can also make headings, lists, block codes, and pre-formatted text. This is my favorite place to visit if I had to choose between the small web places or protocols. 

![Terminal Gemini](/images/smolweb/gemini-term.png)

<center>

*A gemini site accessed from the terminal using clagrange*

</center>


## Accessing the Smolweb

You can use individual clients for individual protocols like Gopher, Gemini, or Finger to access them, but you can also use this client called `Lagrange` to access all of the protocols of the smolweb I mentioned from Both a GUI (lagrange) and a TUI (clagrange).

![gopher](/images/smolweb/gopher.png)

<center>

*My almost inactive gopher site on tilde.team*

</center>

![finger](/images/smolweb/finger.png)

<center>

*My simple finger status update*

</center>

![gemini](/images/smolweb/gemini.png)

<center>

*My gemini protocol space on ctrl-c.club*

</center>

## At Last

I first came across these places during the COVID days. Matter of fact, I started writing and posting on the web in `gemini://` even before I had a `https://` website. So, it is very special to me. While I have not updated the site in a while I still visit it time to time to water my plant in [astrobotany](gemini://astrobotany.mozz.us/public/933334f8342242fbbbad7ecc2931c02e) and see what's going on in the [station](gemini://station.martinrue.com/). I hope you explore these places too and meet new people and make new friends. Or, at the very least find interesting people to follow.

Goodnight! `<3`

I said I'd talk about the other parts of the web too but this much for today. I will write about the more difficult darker part of the web in another post someday. Ok? `^ ^`
