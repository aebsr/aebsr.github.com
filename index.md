---
layout: default
---

<header id="home" class="masthead">
  <div class="container" markdown="1">
    {% include masthead.md %}
  </div>
</header>

<main>

  <section id="notebook">
    <h2 class="section-title">notebook</h2>
    {% for post in site.posts limit:3 %}
    <div class="notebook">
      <div class="notebook-title">
        <h3>
          <a href="{{ site.url }}{{ post.url }}">
            {{ post.title }}
          </a>
        </h3>
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
