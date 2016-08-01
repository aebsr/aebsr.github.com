---
layout: post
title: Poetic Semantics
tags: [css, semantics, accessibility, funny]
description: "A mildly funny, digression of thought fueled journey in search of the perfect markup for poems and lyrics."
redirect_from: "/2014/05/29/poetic-semantics/"
---

This, not actually just in. [Geordi Laforge](http://en.wikipedia.org/wiki/Geordi_La_Forge) announced his plans to [bring reading rainbow back for every child, everywhere](https://www.kickstarter.com/projects/readingrainbow/bring-reading-rainbow-back-for-every-child-everywh). Which you should of course support. Immediately.

The key to this goal is making a web enabled Reading Rainbow. Which on the principle of reaching every child everywhere would need to be completely accessible. Stories and poems are made primarily of words so accessibility *should* be a simple task. Even if done so using the most basic markup.

## The Joke

This morning an old school hip-hop gem bubbled up into my head.

> At the count of three <br>
I want everybody in the place to be<br>
To make some noise if ya down with me<br>
*[Let Me Clear My Throat](http://rapgenius.com/Dj-kool-let-me-clear-my-throat-lyrics)*

Which I thought to write out the title in CSS like so:

`let me { clear: throat }`

Ha, ha, ha. Hilarious right? No.? :(

Then I thought, how far could I take this? Why not markup the chorus or even the entire song in some sort of quirky way?

## The Dilemma

Before I could bother expanding upon my joke I thought, how *should* the song be marked up? And that is where I hit the googles.

There's a page on W3C dedicated to [Poetic Semantics](http://www.w3.org/html/wg/wiki/PoeticSemantics#head-3cf2cce512593d782f466385b73f1272d7848e53:_detailed_discussion_of_poetic_markup_alternatives). It offers ideas, approaches, problems and tons of links for further reading. But it doesn't answer the question.

So I ran over to HTML5 Doctor as surely they would have solid recommendations for how to markup a [poem](http://html5doctor.com/search/?q=poem) or [song](http://html5doctor.com/search/?q=song). Alas, I found more loose recommendations and room for discussion. So as I said before:

<blockquote class="twitter-tweet" lang="en"><p>I would love to have a conversation around poetic semantics <a href="http://t.co/3kpcFIY44M">http://t.co/3kpcFIY44M</a></p>&mdash; Antoine Butler (@aebsr) <a href="https://twitter.com/aebsr/statuses/472017824178012160">May 29, 2014</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

---

And with that I leave you a mashup of ideas hidden in a silly CSS and Semantic joke.

<p data-height="268" data-theme-id="6382" data-slug-hash="CIulE" data-default-tab="result" class='codepen'>See the Pen <a href='http://codepen.io/aebsr/pen/CIulE/'>Let Me Clear My Throat</a> by Antoine Butler (<a href='http://codepen.io/aebsr'>@aebsr</a>) on <a href='http://codepen.io'>CodePen</a>.</p>
<script async src="//codepen.io/assets/embed/ei.js"></script>

*laughs at own joke*
