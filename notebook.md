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

  <section id="notebook">
    <h1 class="section-title">notebook</h1>
    {% for post in site.posts %}
    <div class="notebook">
      <div class="notebook-title">
        <h2>
          <a href="{{ site.url }}{{ post.url }}">
            {{ post.title }}
          </a>
        </h2>
        <small class="notebook-date">
          Published<br>
          {{ post.date | date_to_string }}
        </small>
      </div>
      <div class="notebook-excerpt">
        <p>{{ post.excerpt | remove: '<p>' | remove: '</p>' }}</p>
      </div>
    </div>
    {% endfor %}
  </section>

</main>
