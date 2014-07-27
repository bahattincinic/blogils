'use strict';

angular.module('mainApp', ['ngReact', 'ngResource', 'ngRoute', 'textAngular']);

/* change default template tags */
angular.module('mainApp').config(['$interpolateProvider', function($interpolateProvider){
    $interpolateProvider.startSymbol('{[{');
    $interpolateProvider.endSymbol('}]}');
}]);

angular.module('mainApp').controller('blogController', function($scope, $resource, $location, $routeParams){
  /* create and update form */
  $scope.form = {title: '', summary: '', description: ''};
  /* blog instance */
  var Blog = $resource('/blog/:blogId', {blogId:'@id'}, {
      'update': { method:'PUT' }
  });

  /* get blogs */
  $scope.get_all_blogs = function(){
    if ($routeParams.blogId){
        Blog.get({blogId: $routeParams.blogId}, function(data){
            $scope.form = data;
        });
    }else{
        Blog.query(function(data){
            $scope.data = data;
        });
    }
  }
  $scope.get_all_blogs();

  /* create/updats blog */
  $scope.save_blog = function(){
    if($routeParams.blogId){
      /* update */
      Blog.update({blogId: $routeParams.blogId}, $scope.form, function(){
        $location.path('/');
      });
    }else{
      /* create */
      var instance = new Blog($scope.form);
      instance.$save(function(){
        $location.path('/');
      });
    }
  }

  /* delete blog */
  $scope.delete_blog = function(blog){
    Blog.delete({blogId: blog.id}, function(){
        $scope.get_all_blogs();
    })
  }

});


angular.module('mainApp').controller('userController', function($scope, $resource){
  $scope.form = {username: '', email: '', password: ''};
  var User = $resource('/user/:userId', {userId:'@id'});

  $scope.create = function(){
    var instance = new User($scope.form);
    instance.$save(function(){
        window.location = '/user/login/';
    });
  }
});