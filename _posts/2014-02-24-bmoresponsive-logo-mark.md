---
layout: post
title: Bmoresponsive Logo Mark
tags: [experiments, css]
description: "A CSS logo mark for the Bmoresponsive one day conference in Baltimore."
---

[Bmoresponsive](http://bmoresponsive.com/) is a single day, single track conference dedicated to responsive web design. On their website the logo is shown with two lockups. One served as an SVG, the other a JPG. I wanted to try and make the same logo mark with pure CSS and HTML.

<div style="text-align: center">
	<img src="/assets/media/bmoresponsive-horizontal.jpg" style="margin: 0 auto" />
</div>

## The Markup

I started with the above horizontal lock up. Making the shapes with a stand alone `span` tag proved impossible. The layered effect with interlocking borders couldn't be replicated with such minimal markup.

{% highlight html %}
<h1>
  <span class="icon">
  Bmoresponsive
  <span class="grid">
</h1>
{% endhighlight %}

With the addition of a second superfluous tag, I've sullied the semantics.

<p data-height="268" data-theme-id="0" data-slug-hash="FwLuG" data-default-tab="result" class='codepen'>See the Pen <a href='http://codepen.io/aebsr/pen/FwLuG'>BMORESPONSIVE CSS Logo Mark</a> by Antoine Butler (<a href='http://codepen.io/aebsr'>@aebsr</a>) on <a href='http://codepen.io'>CodePen</a>.</p>
<script async src="//codepen.io/assets/embed/ei.js"></script>

## The CSS

As this is an experiment and not terribly high fidelity I scrapped the idea of making a pixel perfect replica. So working with base font sizes, percentage based size declarations and a "good enough" Google Font I began.

{% highlight css %}
@import url(http://fonts.googleapis.com/css?family=Noticia+Text:700);

*, *:before, *:after {
  box-sizing: border-box;
}

h1 {
  font: 2.5em/1 'Noticia Text', serif;
  text-transform: uppercase;
  position: fixed;
  left: 50%;
  top: 50%;
  transform: translate(-50%, -50%);
  margin: 0;
}
{% endhighlight %}

Fixing my heading to the center of the screen and adjusting it's horionztal and vertical position with a CSS Transform.

{% highlight scss %}
.icon,
.grid {
  height: 2.0625em;
  width: 2.625em;
  display: inline-block;
  vertical-align: middle;
  margin-right: 0.5em;
  transform: translateY(0.25em);

  &:before {
    width: 50%;
    height: 166%;
    bottom: -2px;
    left: 0;
    z-index: 1;
  }

  &:after {
    height: 105%;
    width: 56%;
    bottom: 58%;
    left: 17%;
    z-index: 2;
  }

  &:before, &:after {
    content: '';
    display: block;
    position: absolute;
  }
}
{% endhighlight %}

The `.icon` and `.grid` tags make up the darker bottom square. While their pseudo-selectors are used to make out the other two lighter boxes. These boxes are sized and positioned relative to their container. So the `:before` selector is 166% taller than it's parent `span`.

### Box Sizing Caveat

The elements factor their own borders into their height and width. Their children don't know the border exists. Meaning position rules on children start from the inner side of the border. A child with `bottom: 0;` doesn't site atop its  parent's 3 pixel border along the Z axis. The child sits 3 pixels away from the outer edge of its parent's border. Or visually, flush against the inner edge of its paren's border. This is resolved by negating the child's bottom position by the width of the parent's border, a la `bottom: -2px;`.

### Colorize and Posiiton

The `.icon` itself is the colorized portion of the logo, including it's own border. All but the border of `.grid` is transparent. When positioned on top of each other one element generates the layered effect and the other, the interlocking border effect.

{% highlight scss %}
.icon {
  background: rgb(38,169,224);
  position: relative;

  &:before { background: rgb(121,200,234); }
  &:after { background: rgb(90,187,229); }
}

.grid {
  position: absolute;
  left: 0;
  z-index: 2;
}
{% endhighlight %}

The code is also available as a [GIST](https://gist.github.com/aebsr/9197889).
