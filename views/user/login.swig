{% extends "../layout.swig" %}

{% block title %}Login{% endblock title %}

{% block head %}
<link rel="stylesheet" href="/linker/components/bootstrap/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="/linker/styles/login.css">
{% endblock head %}

{% block body %}
<div class="container-fluid" style="margin-top:100px">
    <div class="row">

        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <h1 class="text-center login-title">Sign in to continue to
                Blogils</h1>

            <div class="account-wall">
                <img class="profile-img" src="/images/login.png"/>

                <form class="form-signin">
                    <input name="username" type="text" class="form-control"
                           placeholder="Username" required autofocus style="width: 298px;">
                    <input name="password" type="password" class="form-control"
                           placeholder="Password" required style="width: 298px;">
                    <input type="hidden" name="redirect" value="{{ req.param('redirect') }}" />
                    <button class="btn btn-lg btn-primary btn-block" style="border: none; color: #FFF !important"
                            type="submit">
                        Sign in
                    </button>
                </form>
            </div>
        </div>
    </div>
</div>

{% endblock body %}