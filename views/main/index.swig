{% extends "../layout.swig" %}

{% block title %}{{ config.seo.title }}{% endblock title %}


{% block body %}
{% include "../header.swig" %}
<div class="content-wrapper">
    <div class="content-wrapper__inner">

        <div class="main-post-list">
            <ol class="post-list">
                {% for blog in blogs %}
                <li>
                    <h2 class="post-list__post-title post-title"><a
                            href="/post/{{ blog.slug }}/{{ blog.id }}/"
                            title="{{ blog.title }}">{{ blog.title }}</a></h2>
                    <p class="excerpt">{{ blog.summary }}</p>
                    <div class="post-list__meta">
                        <time datetime="{{ blog.createdAt }}"
                              class="post-list__meta--date date">{{ blog.createdAt |date('d, M Do, h:m:s a') }}
                        </time>
                         •
                        {{ blog.username }}
                    </div>
                    <hr class="post-list__divider"/>
                </li>
                {% endfor %}
            </ol>
        </div>

    {% include "../footer.swig" %}
    </div>
</div>
{% endblock body %}