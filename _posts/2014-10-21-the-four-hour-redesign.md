---
layout: post
title: The Four Hour Redesign
tags: [personal, design, performance]
description: "A quick blog redesign. Simple, content first and perfomance focussed."
redirect_from: "/2014/10/21/the-four-hour-redesign/"
---

Two days after writing [Less Product, More Process], I looked at my [Lucid] Jekyll Themed blog with renewed angst. It's readability was only satisfactory and the google page speed score was dissapointing. So, to steal a line from Andrew Cohen's [Built In 12 Hours]:

> You probably don’t realize this, but this is a new website.

From pen to published in 4 hours. This post sort of doubles as a colophon for the redesign itself.

## The Sketch

![](/assets/media/pre-four-hour-sketch.jpg)

Yep, that 2 by 3 inch scribble is where I ended the design phase. Looking at the site, you can see I still managed to abandon half of the *sketch*.

## Typography

I started this type setting months ago but abandoned it. The vertical rhythm was good, but the type was a bit hard on the eye. I took it and swapped out the Google sans-serif fonts for system serif defaults, then did the reverse for headings. I bumped up the font size and gave it all a bit more breathing room in its line-height.

    body {
      font-family: "Big Caslon", "Book Antiqua", "Palatino Linotype", Georgia, serif;
    }
    h1, h2, h3, h4, h5, h6 {
      font-family: "Trebuchet MS", Arial, sans-serif;
    }

## Colour Palette

<style>
  .color {
    display: inline-block;
    width: 1em;
    height: 1em;
    vertical-align: middle;
    border: 1px solid rgba(0, 0, 0, 0.8);
  }
  .white {
    background: #fcfcfc;
  }
  .black {
    background: rgba(0, 0, 0, 0.8);
  }
  .tangerine {
    background: #f76;
  }
</style>

For a couple years now, I've tried to [Never Use Black]. I follow the same rule for absolute white. For no reason other than, neither appear naturally on earth.

- Text is dark <span class="color black"></span> rgba(0, 0, 0, 0.8)
- Backgrounds are light <span class="color white"></span> #fcfcfc
- Anchors are a soft pink tangerine <span class="color tangerine"></span> #f76

## Imagery

Though one of my larger goals for the redesign was to make the site load faster, I had to have a *little* imagery. And so, I've reused Nguyet Vuong's [watercolor] of me in the header. Applying CSS blends to allow me to make code only color adjustments when needed.

## No JavaScript

As much as I'd like to [abandon Google Analytics] the fact of the matter is: I do care who's reading, where they are coming from and what they find interesting. Though it won't shape what I write and produce, it answers the question I want to ask everyone on [Twitter], "Why do you people even follow me?". Anyway, besides Analytics, I've removed all javascript from the site. No offscreen navigation. No feature detection. No, nothing.

## Numbers Don't Lie

The performance numbers are in. Though it should come as no surprise. Minimal Markup, little to no JavaScript, system default fonts and a single compressed image asset loads pretty fast in all circumstances.

Google Page Speed ranks [aeb.sr] with **98/100** for both Desktop and Mobile. **100/100** for User Experience.

WebPageTest.org is less forgiving as my single image asset isn't CDN hosted, and aparently my .htaccess caching rules are insufficient. Though this may be related to hosting the site via GitHub Pages. I'll have to investigate later. Also my first byte size is large, because I'm inling all the CSS. Then again, 88% of my reported load time is server response. Actual performance will vary.

> Cause I'm a fu&copy;k!n legend, and this is gettin *[ugly]*

[Less Product, More Process]: /2014/10/14/less-product-more-process/
[Lucid]: /lucid-jekyll-theme
[Built In 12 Hours]: http://imandrewcohen.com/journal/Built-in-12-Hours/
[Never Use Black]: http://ianstormtaylor.com/design-tip-never-use-black/
[Watercolor]: https://www.flickr.com/photos/nguyet/8148272632/in/set-72157625963624595
[twitter]: http://twitter.com/aebsr
[Ugly]: http://rap.genius.com/Bubba-sparxxx-ugly-lyrics
[Abandon Google Analytics]: http://sixtwothree.org/blog/abandoning-google-analytics
[aeb.sr]: http://aeb.sr
