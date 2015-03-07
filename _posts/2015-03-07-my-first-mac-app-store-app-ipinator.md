---
date: 2015-03-07 12:24:52 +0100
title: "IPinator"
draft: true
category: announcement
tags:
  - osx
  - app
  - widget
---

I am happy to announce that [IPinator], a Mac app I've been working on in my spare time, is *finally* [live on the App Store][appstore]. It's a  utility app and Notification Center widget that geocodes your external IP address and displays it alongside your local one for easy copy-pasting during local development, VPN setup, etc.

{% include figure.html file="ipinator-screenshot.jpg" alt="IPinator screenshot" caption="Application window and Notification Center extension." %}

Initially, I designed IPinator as a Today extension with a non-functional container app, but that didn't make it past the App Store review team. In the wake of several Notification Center-related rejections, that didn't come to me as a surprise; my goal was to test the waters before committing to adding any functionality to the main app.

IPinator is written in Swift and uses [Argo] for JSON parsing and [Llamakit] for `Result`. The code-base is straightforward, save for one limitation related to the inability to display an `MKMapView` in a Today extension. The solution I came up with involved generating a map screenshot and passing it to the extension as an `NSImage`.

If you'd like to review the app, feel free to [get it touch][contact] for a promo code.

[ipinator]: http://ipinator.kaishin.co
[appstore]: https://itunes.apple.com/us/app/ipinator/id959111981
[argo]: https://github.com/thoughtbot/Argo
[llamaKit]: https://github.com/LlamaKit/LlamaKit
[contact]: http://ipinator.kaishin.co/support

