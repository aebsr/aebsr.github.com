---
layout: default
---

<header id="home" class="masthead">
  <div class="container" markdown="1">
    {% include masthead.md %}
  </div>
</header>

<main>

  <div id="notebook">
    <h2 class="section-title">notebook</h2>
    {% for post in site.posts limit:3 %}
    <section class="notebook">
      <header class="notebook-title">
        <h3>
          <a href="{{ site.url }}{{ post.url }}">
            {{ post.title }}
          </a>
        </h3>
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
