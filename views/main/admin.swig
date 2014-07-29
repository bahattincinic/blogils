{% extends "../layout.swig" %}

{% block title %} Admin {% endblock title %}

{% block footer %}
<link rel="stylesheet" href="/linker/components/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="/linker/styles/admin.css">
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.min.css">
<link rel="stylesheet" href="/linker/components/alertify.js/themes/alertify.core.css">
<link rel="stylesheet" href="/linker/components/alertify.js/themes/alertify.default.css">

<script src="/linker/components/angular/angular.js"></script>
<script src="/linker/components/angular-resource/angular-resource.js"></script>
<script src="/linker/components/angular-route/angular-route.js"></script>
<script src="/linker/components/underscore/underscore-min.js"></script>
<script src="/linker/components/react/react.js"></script>
<script src="/linker/components/react/JSXTransformer.js"></script>
<script src="/linker/components/ngReact/ngReact.min.js"></script>
<script src='/linker/components/textAngular/dist/textAngular-sanitize.min.js'></script>
<script src='/linker/components/textAngular/dist/textAngular.min.js'></script>
<script src='/linker/components/alertify.js/lib/alertify.min.js'></script>
<script src="/linker/js/apps/controllers.js"></script>
<script type="text/jsx" src="/linker/js/apps/dom.js"></script>
<script src="/linker/js/apps/routes.js"></script>
{% endblock footer %}

{% block body %}
<div class="container-fluid" style="margin-top:65px" ng-app="mainApp">
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container-fluid" ng-init='user={% autoescape false %}{{ user|json }}{% endautoescape %}'>
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-6">
          <span class="sr-only">Toggle navigation</span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
          <span class="icon-bar"></span>
        </button>
        <a class="navbar-brand" href="/">Blogils</a>
      </div>

      <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-6">
        <ul class="nav navbar-nav">
          <li class="active"><a href="#/">Blogs</a></li>
          <li><a href="#/add-blog">Add Blog</a></li>
        </ul>

        <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
          <a href="javascript:void(0)" class="dropdown-toggle" data-toggle="dropdown">
              <span ng-bind="user.username"></span> <span class="caret"></span>
          </a>
          <ul class="dropdown-menu" role="menu">
            <li><a ng-href="#/update-profile/{[{ user.id }]}/">Update Profile</a></li>
            <li><a href="/user/logout">Logout</a></li>
          </ul>
        </li>
      </ul>

      </div>
    </div>
</nav>

<div ng-view></div>
</div>

{% endblock body %}