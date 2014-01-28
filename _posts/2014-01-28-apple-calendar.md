---
layout: post
title: Apple Calendar
tags: [experiments, less, inspiration]
description: "An experiment, replicating most of the basic UI for Apple Calendar with CSS."
---

A not so sudden bit of insomnia fueled a bit of CSS inspiration. I decided to replicate the Apple Calendar UI in CSS. I forwent any JavaScript or involved Media Queries and just focussed on the base styles. Checkout the basic [demo](http://codepen.io/aebsr/full/gykpj).

## Minimal Viable Concept

![](/assets/media/apple-calendar.png)

I'm pretty happy with the results. The exception being calendar specific colors. *Those little dots to the left of event names.* I wanted to color code them but realized my markup wouldn't play nice. Changing the color of an `li` doesn't change it's bullet. You'd have to change the entire `ul` which would defeat the purpose.

Surprise, choosing the more semantic option, left me with fewer options. I could use css content to accomplish this only to refactor further to keep from interfering with the text overflow of events. Both of these are worthwhile tasks, should I not sleep tomorrow night. Or of course, you can [get your fork on](http://codepen.io/aebsr/pen/gykpj). Match the type and measurements of the Apple Calendar. Add JavaScript to support some rich interactions. Generate the calendar from a json object. The sky's the limit.

<p data-height="268" data-theme-id="0" data-slug-hash="gykpj" data-default-tab="result" class='codepen'>See the Pen <a href='http://codepen.io/aebsr/pen/gykpj'>gykpj</a> by Antoine Butler (<a href='http://codepen.io/aebsr'>@aebsr</a>) on <a href='http://codepen.io'>CodePen</a>.</p>
<script async src="//codepen.io/assets/embed/ei.js"></script>

If GitHub is more your speed, I've posted the code as a [Gist](https://gist.github.com/aebsr/8663351) as well. If you run with it, I'd love to see your end product. [Tweet me](http://twitter.com/aebsr).

> All you cats can fine your damages I'm smashin' the song /
Plus your s&!t is outdated like the calendar's wrong, boy *[Capital Steez](http://rapgenius.com/Capital-steez-capital-steez-lyrics)*
