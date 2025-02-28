+++
title = "3o14.com: Init"
date = 2025-02-28
[taxonomies]
writings=["Reports"]
+++

<img src="/images/3o14_com/makuro.png" alt="App Icon for 3o14" style="width: 25%;" />

## Preface

When I started using Linux, I found out that I had to use cronjobs to run some scripts I wanted to run in repeat, that was how I was introduced about services/daemons. Then it was when trying to make a website, I needed a server to continuously see the live changes that I did to my HTML file. I gradually learned about more industry standard servers like Apache after playing with the python server module almost all the time when testing and making a website. Then I found out about self-hosting. [_That's what's like growing in a Linux environment._] I hated subscriptions and was unable to use the "free" VPS services due to their credit card requir3o14_comements. Almost everything I did was entirely on my laptop and on my phone with Termux. [_I used to use Termux even before I got a laptop._] Then, being in the Linux communities I got interested in Privacy and Security, then I joined mastodon as a healthier alternative social media platform as an experiment.

I didn't know about decentralization and federation back then, I used the link from the YouTube channel I liked and that was my social media home, until that server (Instance) got shut down, and I had to move to a new instance, that is how I got to know about decentralization and federation. Now living in one of the servers, I found out about more services like mastodon that weren't mastodon but could communicate with my instance but had a completely different UI and features. I learned about single user instances and servers particularly for a single user. Since then, I wanted my own private island(instance) of my social media. I did somewhat treat this blogging site as my own island, but it is static and isn't like a "social" media at all. This is how I got interested in ActivityPub and wanted to build my own.

## Introduction

3o14 (pi) is a single user ActivityPub based social media that also supports rendering mathematical typesetting as a way to scientifically communicate between people. It is a self-hostable social media for a single person that is Privacy respecting (obviously) and we (It's not my single effort.) built it to understand the underlying protocol ActivityPub and how it worked. (And as a minor project for our computer engineering degree.)

### How the Fediverse works

The Fediverse operates on a decentralized model, allowing various independent servers, or instances, to communicate with one another through open protocols like ActivityPub. Each instance hosts its own community and user base [_It could be a single user too_], enabling users to create accounts on different servers while still interacting seamlessly with users on other instances. When a user posts content, that activity is packaged in a standardized format and sent to other instances, allowing for real-time updates and interactions across the network. This federated approach ensures that no single entity controls the entire ecosystem, promoting user autonomy and privacy. Additionally, the use of open-source software means that anyone can set up their own instance, fostering a diverse range of platforms and experiences within the Fediverse. By leveraging these protocols, you can build applications that not only respect user privacy but also facilitate rich, interconnected social experiences across various platforms.

<img src="/images/3o14_com/fediverse.png" alt="App Icon for 3o14" />

### What we wanted to build (and eventually built)

We wanted to build a single user social media platform using the protocol, that supported mathematical syntax for scientific communication. It had to be easy to deploy with minimal efforts and had to be federated with the network of Fediverse. It would be a platform for tech minded scientific people who want privacy in their social media and want to own their own data without having to rely on big tech and black box social media with constraints like Facebook, X, Instagram, etc. which do not have anything helpful for using mathematical symbols in the posts. [_This absolutely doesn't mean that it doesn't support regular posts, it should._]

I want to start from the frontend, because that is the most amount of work I have put in.

### Frontend

For the frontend, I used React Native because I was looking at the trends and saw a growing social media Bluesky writing its cross-platform frontend entirely in React Native and saw how they had all the features available in both their web and mobile platforms. It was fairly easy to use with a framework called 'Expo', which made building and testing the app in web and in android much easier. Learning about routes of expo and how it handled screens and modals was a bit difficult at first, but it got easier as the app grew. But working with multiple platform did bring multiple issues for different platforms.

![Instance Chooser](/images/3o14_com/login.png)

One of the issues was rendering mathematics, there was no library that could render math on web as well as in mobile. I had to work around by using two libraries with separate rendering logic for web and mobile, of which I still am not satisfied with how the mobile renderer is a bit slow and janky, but I made the two platforms act as closest as possible.

Learning about ActivityPub APIs was fun, I got to know how the requests were made and how things worked after the UI is clicked, how screens were loaded and so much. AI tools helped a lot to write logics and understand them when I was absolutely blank about what to do. [_It happened more often than you'd think._]

### Backend

I did not do much work on the backend, [faultypointer](https://faulty.carboxi.de) did the work. But I do understand the technologies used in it. Hono was used for the server and fedify was used as the typescript library to eliminate the boilerplate for building Fediverse apps (I didn't just take that from the fedify site). The server too is written in typescript like the frontend. Fedify works as the middleware that processes the `activity/json` data that are requested to the server for federation. The database is Postgres and the schema and query is handled by the drizzle ORM.

## Showcase

<div class="gallery" style="display:flex; flex-wrap: wrap;">
  <img src="/images/3o14_com/home_page.png" style="width: 19rem; padding:0.25rem;border-radius: 1.75rem;">
  <img src="/images/3o14_com/reply_page.png" style="width: 19rem; padding:0.25rem;border-radius: 1.75rem;">
</div>

<div style="text-align: center">

**img:** _homepage and replies page_

</div>

<div class="gallery" style="display:flex; flex-wrap: wrap;">
  <img src="/images/3o14_com/light_compose.png" style="width: 19rem; padding:0.25rem;border-radius: 1.75rem;">
  <img src="/images/3o14_com/light_reply.png" style="width: 19rem; padding:0.25rem;border-radius: 1.75rem;">
</div>

<div style="text-align: center">

**img:** _post compose and reply compose page in light mode with post visibility menu toggled_

</div>

<div class="gallery" style="display:flex; flex-wrap: wrap;">
  <img src="/images/3o14_com/light_mobile.png" style="width: 15rem; padding:1rem;border-radius: 1.75rem;">
  <img src="/images/3o14_com/dark_mobile.png" style="width: 15rem; padding:1rem;border-radius: 1.75rem;">
</div>

<div style="text-align: center">

**img:** _homepage and profile page in mobile_

</div>

## Conclusion

There isn't much to conclude here because we have achieved the basics of what we want, but the work is very incomplete and alpha. We have an android app that does work with all other servers, not just ours thanks to Fediverse, but everything is bare-bones and need many improvements. This piece of art is presentable, but I now need to host the both the webui and backend on a Raspberry Pi just to show that a simple device can handle your social media, and you don't have to rely on big tech for it.

Lastly, here is the source for what we are working on, [github/3o14-com](https://github.com/3o14-com). Enjoy!
