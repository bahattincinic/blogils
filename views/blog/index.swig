{% extends "../layout.swig" %}

{% block title %} Admin {% endblock title %}

{% block head %}
<script type="text/javascript">
    $(function(){
        $('#CreateForm').submit(function(){
            var data = $(this).serialize();
            var url = $(this).attr('action');
            $.ajax({
                url: url,
                data: data,
                success: function(data){
                    window.location.reload()
                }
            });
            return false;
        });
    });
</script>
{% endblock head %}

{% block body %}
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
      <!-- We use the fluid option here to avoid overriding the fixed width of a normal container within the narrow content columns. -->
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
            <li><a href="#" data-toggle="modal" data-target="#addBlog">Add Blog</a></li>
            <li><a href="/user/logout">Logout</a></li>
          </ul>
        </div><!-- /.navbar-collapse -->
      </div>
</nav>

<div class="container-fluid" style="margin-top:65px">
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
      <tbody>
      {% for blog in blogs %}
          <tr>
          <td>{{ blog.title }}</td>
          <td>{{ blog.createdAt |date('d, M Do, h:m:s a') }}</td>
          <td><a href="/admin/blog/edit/{{ blog.id }}">Edit</a></td>
          <td><a href="/blog/destroy/{{ blog.id }}">Delete</a></td>
        </tr>
      {% endfor %}
      </tbody>
</table>
</div>
</div>

<div class="modal fade" id="addBlog" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span>
            <span class="sr-only">Close</span>
        </button>
        <h4 class="modal-title" id="myModalLabel">Add Blog</h4>
      </div>
      <div class="modal-body">
        <form method="get" id="CreateForm" action="/blog/create">
         <div class="form-group">
            <label for="titleInput">Title</label>
            <input type="text" class="form-control" name="title" id="titleInput" placeholder="Enter title">
        </div>
        <div class="form-group">
            <label for="summaryInput">Summary</label>
            <textarea name="summary" id="summaryInput" class="form-control" rows="3"></textarea>
        </div>
        <div class="form-group">
            <label for="descriptionInput">Description</label>
            <textarea name="description" id="descriptionInput" class="form-control" rows="3"></textarea>
        </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary" onclick="$('#CreateForm').submit()">Save changes</button>
      </div>
    </div>
  </div>
</div>
{% endblock body %}