{% extends "../layout.swig" %}

{% block title %}{{ post.title }}{% endblock title %}

{% block bodyclass %}
post-template tag-front-end tag-styleguide tag-bootstrap no-js
{% endblock bodyclass %}

{% block body %}
{% include "../header.swig" %}

<div class="content-wrapper">
    <div class="content-wrapper__inner">

          <article class="post-container post-container--single">
            <header class="post-header">
              <div class="post-meta">
                <time datetime="05 Jun 2014" class="post-meta__date date">
                    {{ post.createdAt |date('d, M Do, h:m:s a') }}
                </time>
              </div>
              <h1 class="post-title">{{ post.title }}</h1>
            </header>

            <section class="post tag-front-end tag-styleguide tag-bootstrap">
            <p> {{ post.description }} </p>
            </section>

          </article>

    {% include "../footer.swig" %}
    </div>
</div>
{% endblock body %}