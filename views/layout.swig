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

    <!--STYLES-->
    <link rel="stylesheet" href="/linker/styles/animate.css">
    <link rel="stylesheet" href="/linker/styles/bootstrap.min.css">
    <link rel="stylesheet" href="/linker/styles/login.css">
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
</head>

<body class="home-template no-js">
{% block body %} {% endblock body %}

<!--SCRIPTS-->
<script src="/linker/js/socket.io.js"></script>
<script src="/linker/js/sails.io.js"></script>
<script src="/linker/js/app.js"></script>
<script src="/linker/js/jquery.js"></script>
<script src="/linker/js/main.js"></script>
<!--SCRIPTS END-->
</body>
</html>
