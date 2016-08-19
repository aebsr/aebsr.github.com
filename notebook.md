---
layout: default
permalink: notebook/
---

<small class="breadcrumb">
  <a href="/">aeb.sr</a>
  /
  notebook
</small>

<main class="category">

  <div id="notebook">
    <h1 class="section-title">notebook</h1>
    {% for post in site.posts %}
    <section class="notebook">
      <header class="notebook-title">
        <h2>
          <a href="{{ site.url }}{{ post.url }}">
            {{ post.title }}
          </a>
        </h2>
        <small class="notebook-date">
          Published<br>
          {{ post.date | date_to_string }}
        </small>
      </header>
      <div class="notebook-excerpt">
        <p>{{ post.excerpt | remove: '<p>' | remove: '</p>' }}</p>
      </div>
    </section>
    {% endfor %}
  </div>

</main>
