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
            <p>{% autoescape false %} {{ post.description }}{% endautoescape %}</p>
            </section>

          </article>

    {% if config.comment.is_active %}
    <section class="post-comments">
        <div id="disqus_thread"></div>
      <div id="disqus_thread"></div>
        <script type="text/javascript">
            var disqus_shortname = '{{ config.comment.disqus_shortname }}';
            (function() {
                var dsq = document.createElement('script'); dsq.type = 'text/javascript'; dsq.async = true;
                dsq.src = '//' + disqus_shortname + '.disqus.com/embed.js';
                (document.getElementsByTagName('head')[0] || document.getElementsByTagName('body')[0]).appendChild(dsq);
            })();
        </script>
        <noscript>
          Please enable JavaScript to view the <a href="http://disqus.com/?ref_noscript">comments powered by Disqus.</a>
        </noscript>
        <a href="http://disqus.com" class="dsq-brlink">comments powered by <span class="logo-disqus">Disqus</span></a>
    </section>
    {% endif %}


    {% if config.share %}
        <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=ra-4f8f2d5748940b7d"></script>
    {% endif %}

    {% include "../footer.swig" %}
    </div>
</div>
{% endblock body %}