{% extends "../layout.swig" %}

{% block title %} Admin {% endblock title %}

{% block head %}
<script src="/linker/components/angular/angular.js"></script>
<script src="/linker/components/angular-resource/angular-resource.js"></script>
<script src="/linker/components/underscore/underscore-min.js"></script>
<script src="/linker/components/react/react.js"></script>
<script src="/linker/components/react/JSXTransformer.js"></script>
<script src="/linker/components/ngReact/ngReact.min.js"></script>
<script src="/linker/js/apps/controllers.js"></script>
<script type="text/jsx" src="/linker/js/apps/dom.js"></script>
{% endblock head %}

{% block body %}
<div class="container-fluid" style="margin-top:65px" ng-app="adminApp" ng-controller="adminController">
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container-fluid">
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
          <li class="active"><a href="/admin/">Blogs</a></li>
          <li><a href="#">Add Blog</a></li>
          <li><a href="/user/logout">Logout</a></li>
        </ul>
      </div>
    </div>
</nav>
<div class="row">
<table class="table table-striped">
      <thead>
        <tr>
          <th>Title</th>
          <th>Created Date</th>
          <th>Edit</th>
          <th>Delete</th>
        </tr>
      </thead>
      <tbody ng-react-component="Repeater" data="data"></tbody>
</table>
</div>
</div>
{% endblock body %}