<!DOCTYPE html>
<html>
<head>
    <title>{% block title %} {% endblock title %}</title>

    <!-- Viewport mobile tag for sensible mobile support -->
    <meta charset="utf-8"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="HandheldFriendly" content="True">
    <meta name="MobileOptimized" content="320">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style"
          content="black-translucent">
    <link rel="alternate" type="application/rss+xml" title="{{ config.seo.title }}" href="{{ config.domain }}feed/" />

    <!--STYLES-->
    <link rel="stylesheet" href="/linker/styles/uno.css">
    <!--STYLES END-->

    <meta name="description" content="{% block description %}{{ config.seo.description }}{% endblock description %}">
    <meta name="keyword" content="{% block keyword %}{{ config.seo.keyword }}{% endblock keyword %}">
    <meta name="twitter:card" content="summary">
    <meta name="twitter:title" content="{{ config.blogger.name }}">
    <meta name="twitter:description" content="{{ config.seo.description }}">

    <meta property="og:type" content="article">
    <meta property="og:title" content="{{ config.blogger.name }}">
    <meta property="og:description" content="{{ config.seo.description }}">

    {% block head %} {% endblock head %}
</head>

<body class="{% block bodyclass %}home-template no-js{% endblock bodyclass %}">
{% block body %} {% endblock body %}

<!--SCRIPTS-->
<script src="/linker/js/socket.io.js"></script>
<script src="/linker/js/sails.io.js"></script>
<script src="/linker/js/app.js"></script>
<script src="/linker/components/jquery/dist/jquery.js"></script>
<script type="text/javascript" src="/linker/components/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="/linker/js/main.js"></script>
{% block footer %}{% endblock footer %}
<!--SCRIPTS END-->
</body>
</html>
