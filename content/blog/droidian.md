+++
title = "Droidian: Linux Smartphone Experience"
date = 2023-11-30
[taxonomies]
writings=["Articles"]
+++

## My Device
```

            #####           scientiac@mobius
           #######          ---------------
           ##O#O##          OS: Droidian trixie aarch64
           #######          Host: wcd937x Audio Codec AB IDP EXCALIBUR
         ###########        Kernel: 4.14-288-xiaomi-miatoll
        #############       Uptime: 1 hour, 40 mins
       ###############      Packages: 1945 (dpkg), 390 (nix-user), 47 (nix-default), 28 (flatpak)
       ################     Shell: bash 5.2.15
      #################     Resolution: 1080x2400x60x164823
    #####################   DE: GNOME (actually 'phosh')
    #####################   WM: weston (actually 'phoc')
      #################     Theme: adw-gtk3 [GTK2/3]
                            Icons: Papirus [GTK2/3]
                            Terminal: kgx
                            CPU: Qualcomm SM7125 (8) @ 1.804GHz
                            Memory: 2370MiB / 5587MiB

    * neofetch gathered some false data so i have manually edited this text blob.

```

## Firstly...

I have been playing around and testing Droidian on my *Xaomi Redmi Note 9 Pro Max (miatoll - excalibur)* as a daily driver since November 17th. Before this I had tried Droidian about a year ago on this very device.

> Note: The screenshots attached here are of my customized version of phosh and GTK colors, the default UI will look different.

<div class="gallery" style="display:flex; flex-wrap: wrap;">
  <img src="/images/droidian/lockscreen.png" style="width: 15rem; padding:1rem;border-radius: 1.75rem;">
  <img src="/images/droidian/overview.png" style="width: 15rem; padding:1rem;border-radius: 1.75rem;">
</div>


### A quick THEN v/s NOW

Then, the UI was not tailored for the device I was using, it was vanilla phosh with clock in the center of the bar which was covered by the punch-hole of my device and the notification panel was also not aligned correctly to the device. Now, it's fine and the UI is just how it should be for the device.

<div class="gallery" style="display:flex; flex-wrap: wrap;">
  <img src="/images/droidian/old_tele.png" style="width: 15rem; padding:1rem;border-radius: 1.75rem;">
  <img src="/images/droidian/new_tele.png" style="width: 15rem; padding:1rem;border-radius: 1.75rem;">
</div>

Then, The Camera was not working at all. Now, the `droidian-camera` does work but it's laggy. Though it technically can capture videos the frame rate drops very randomly and the video comes out to be choppy. The file size of the choppy video is also very high.

Then, Apps like telegram and nessenger from firefox did not connect to calls at all. Now, microphone is generally supported by all apps and voice calling via other apps work fine.

Then, Waydroid used to work without much problems. Now, upon launching Waydroid and trying to video-call the entire shell crashes and the only way to bring back the UI is by a forced restart.

## Experience

Gnome Asia 2023 is starting Tomorrow, I travelled from Dharan to Kathmandu with Droidian on my phone and it feels like I am handicapped using this device coming from android.

### Voice Calls

Since it is a phone it should be able to make calls and it does. Though my device supports two SIMs, droidian on my device only detects and uses one so, I had to let go of my secondary SIM. 

<img alt="Gnome Calls" src="/images/droidian/call_dialing.png" style="width: 15rem;"/>

### Notifications

Apps should be running in the background to be able to make notifications, and the other thing is I am not notified with sound or vibration of any of my texts messages be it from apps like `fractal`, `nheko`, `telegram-desktop` or even `gnome-messages` even if the app is running in the background when the screen is off.

The `gnome-calls` app is the only app I know which can make "noisy notifications" when my phone is locked and the screen is off. So, I only know if anyone is calling me on my number but nothing if they use any other platform.

<img alt="Notification/ Quick Settings Panel" src="/images/droidian/notif_panel.png" style="width: 15rem;"/>

### Maps

Yes, Gnome Maps works on this device but It does not show my real time location. And coming from using Google Maps, it isn't a very pleasant of an experience.

<img alt="Gnome Maps" src="/images/droidian/gnome_maps.png" style="width: 15rem;"/>

### Waydroid

The waydroid experience was buggy when used in the default condition but it worked fine under a nested `weston` session. But, `weston` comes with a drawback. The resolution when used in the default `phoc` is great everything looks crisp but when used in a nested `weston` session the resolution is low and it's only usable. At least waydroid doesn't crash the whole phoc session when used inside the nested `weston` session.

The first image below is with 400dpi (in default `phoc` session) whereas the second one is on 1700dpi (in `weston` session) set from android developer settings.


<div class="gallery" style="display:flex; flex-wrap: wrap;">
  <img src="/images/droidian/waydroid_phoc.png" style="width: 15rem; padding:1rem;border-radius: 1.75rem;">
  <img src="/images/droidian/waydroid_weston.png" style="width: 15rem; padding:1rem;border-radius: 1.75rem;">
</div>

Though `gnome-maps` do not show real time location, google maps from waydroid is able to do it. But, it requires some time to load everything.

### Web Browsing

Web browsing is fine in droidian. Firefox with a mobile focused custom layout is the default browser. There are some glitches here and there on firefox caused by the inability to adapt to a mobile form but normal day to day browsing can be done nicely. Various websites, Facebook, Instagram, YouTube, everything works fine but not as smooth as using on desktop or android and it is expected because I am technically running a whole desktop application on a smartphone.

<img alt="Youtube on Firefox" src="/images/droidian/firefox_yt.png" style="width: 15rem;"/>

The desktop extensions work fine, but the UI to edit them from their window glitches on my device. So, the extensions which work by default work the best.

### Social Media and Messaging

Well, mastodon is my favourite social media ever and `Tuba` is a dedicated app from flathub which works more than fine for it. YouTube, Facebook and Instagram can be used from the Firefox browser. For communication, `telegram-desktop` works fine, so does `Nheko` for matrix supporting voice calls as well, other matrix clients like `Fractal` work too. And there always are web based clients that work in responsive mode.


<div class="gallery" style="display:flex; flex-wrap: wrap;">
  <img src="/images/droidian/masto_pan.png" style="width: 15rem; padding:1rem;border-radius: 1.75rem;">
  <img src="/images/droidian/masto_home.png" style="width: 15rem; padding:1rem;border-radius: 1.75rem;">
</div>

It's not always gtk apps, qt apps are convergent too; `telegram-desktop` and `nheko` are two examples. They are the only "apps" which support voice calls natively and even video calls if it detects a camera (it doesn't in mine).

<div class="gallery" style="display:flex; flex-wrap: wrap;">
  <img src="/images/droidian/nheko.png" style="width: 15rem; padding:1rem;border-radius: 1.75rem;">
  <img src="/images/droidian/fractal.png" style="width: 15rem; padding:1rem;border-radius: 1.75rem;">
</div>

### File Sharing

Sharing files is surprisingly important in our day-to-day life. Since it is a whole Linux system `ssh` can be used to transfer and receive files as well as modify it remotely. For a more GUI approach the best way to share files from any kind of device is the `magic-wormhole` protocol. And `warp` being the GTK convergent app for Droidian, it has made my life a lot easier.

<div class="gallery" style="display:flex; flex-wrap: wrap;">
  <img src="/images/droidian/warp_home.png" style="width: 15rem; padding:1rem;border-radius: 1.75rem;">
  <img src="/images/droidian/warp_send.png" style="width: 15rem; padding:1rem;border-radius: 1.75rem;">
</div>

I am writing this blog on my laptop while taking screenshots from my phone and sending them to my laptop using warp.

## Customization

The thing that introduced Linux to me and made it interesting was the customizability of it. I encountered Linux when YouTube recommended a video of KDE while I was searching for ways to customize windows. So, you can pretty much assume that I don't use things without giving some of it my touch.

### Colors and Textures

As I have mentioned before, the screenshots attached here are of my customized version of phosh and GTK colors. So, since it is basically a GTK environment, `gradience` works like a charm for changing the color palette of the apps. And for the phosh shell, some custom `gtk.css` on `~/.config/gtk-3.0/` will do the trick.

Here, I am using the `gruvbox` theme to customize my shell.

<div class="gallery" style="display:flex; flex-wrap: wrap;">
  <img src="/images/droidian/gradience.png" style="width: 15rem; padding:1rem;border-radius: 1.75rem;">
  <img src="/images/droidian/gradience_css.png" style="width: 15rem; padding:1rem;border-radius: 1.75rem;">
</div>

```css

    phosh-home, .phosh-overview, phosh-app-grid {
        background-color: #282828; /* gruvbox primary color */
    }

    phosh-top-panel, phosh-lockscreen, .phosh-lockshield {
        background-image: url('file:///home/droidian/Desktop/image.png'); /* a blurred version of wallpaper or any preferred image */
        background-size: cover;
        background-position: center;
    {

```

### Shell Tweaks

Changing icons, showing battery percentage in the bar, setting themes enabling Application filter, everything was done with an app called `postmarketos-tweaks` which I compiled from the source.
```

    https://gitlab.com/postmarketOS/postmarketos-tweaks

```

<div class="gallery" style="display:flex; flex-wrap: wrap;">
  <img src="/images/droidian/pmos.png" style="width: 15rem; padding:1rem;border-radius: 1.75rem;">
  <img src="/images/droidian/pmos_phosh.png" style="width: 15rem; padding:1rem;border-radius: 1.75rem;">
</div>

### Scaling

The default scale is good for the eyes but for me it was a bit too big. I wanted more stuff on this small screen of my phone. For that I went to `/etc/phosh/phoc.ini` and set the following:

```

    [output:HWCOMPOSER-1]
    scale = 2.5

```

## Finally...

The whole Linux ecosystem isn't convergent yet, and many apps go beyond the screen resulting in hidden buttons and texts. To tackle that problem, Droidian comes with `Mobile Settings` that helps to scale down particular apps so that they fit on the screen.

<div class="gallery" style="display:flex; flex-wrap: wrap;">
  <img src="/images/droidian/mobile_settings.png" style="width: 15rem; padding:1rem;border-radius: 1.75rem;">
  <img src="/images/droidian/mobile_settings_comp.png" style="width: 15rem; padding:1rem;border-radius: 1.75rem;">
</div>

### It would have been much better if it had...

Some features like, the semi-automatic screen rotation that android has nowadays which would show a small prompt to rotate the screen upon rotating the device but without automatically rotating it. Also, gestures in apps like video players to scroll and double taps to skip. Which would make the droidian experience much better. And, maybe a qr-code scanner to connect to wifi networks.

### Lastly, Some Mentions
Waydroid has been a life saver for using essential video calling apps and surprisingly banking apps. But, the default waydroid experience is very buggy. It is not the fault of droidian devs though, waydroid is a completely different project.

Gnome Online Accounts made it very easy to sync my contacts saved on google contacts, calender events, emails on droidian. It also connected my google drive with `nautilus [Gnome Files]` making it easy to upload and access files from my drive.

### So,
My experience with Linux on Mobile was interesting, though it has a lot to improve, I didn't expect it to be "functional enough" that I could use it for days without diving back to android. I will use this for some more days, maybe until the Gnome Asia 2023 event ends. 

There is lot more to try yet but I want to end this experiment for now. 

Goodnight!
