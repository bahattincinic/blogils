{% extends "../main/admin.swig" %}

{% block title %}Login{% endblock title %}

{% block body %}
<link rel="stylesheet" href="/linker/styles/login.css">
<div class="container" style="margin-top:100px" ng-app="mainApp">
    <div class="row" ng-controller="userController">

        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <h1 class="text-center login-title">Register in to continue to
                Blogils</h1>

            <div class="account-wall">
                <img class="profile-img" src="/images/login.png"/>

                <form class="form-signin" ng-submit="save()">
                    <input name="username" type="text" class="form-control"
                           placeholder="Username" required autofocus style="width: 298px; margin-bottom: 3px" ng-model="form.username">
                    <input name="email" type="email" class="form-control"
                           placeholder="E-mail" required autofocus style="width: 298px; margin-bottom: 3px"  ng-model="form.email">
                    <input name="password" type="password" class="form-control"
                           placeholder="Password" required style="width: 298px;"  ng-model="form.password" />
                    <button class="btn btn-lg btn-primary btn-block" style="border: none; color: #FFF !important"
                            type="submit">
                        Register
                    </button>
                </form>
            </div>
        </div>
    </div>
</div>

{% endblock body %}