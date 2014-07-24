'use strict';

angular.module('mainApp', ['ngReact', 'ngRoute']);

/* change default template tags */
angular.module('mainApp').config(['$interpolateProvider', function($interpolateProvider){
    $interpolateProvider.startSymbol('{[{');
    $interpolateProvider.endSymbol('}]}');
}]);

angular.module('mainApp').controller('blogController', function($scope, $http, $location, $routeParams){
  /* create and update form */
  $scope.form = {title: '', summary: '', description: ''};

  /* get all blogs */
  $scope.get_all_blogs = function(){
    if ($routeParams.blogId){
        $http.get('/blog/' + $routeParams.blogId).then(function(data){
            $scope.form = data.data;
        });
    }else{
        $http.get('/blog/').then(function(data){
            $scope.data = data.data;
        });
    }
  }
  $scope.get_all_blogs();

  /* create/updats blog */
  $scope.save_blog = function(){
    if($routeParams.blogId){
      $http.put('/blog/' + $routeParams.blogId, $scope.form).then(function(data){
        $location.path('/');
      });
    }else{
      $http.post('/blog/', $scope.form).then(function(data){
         $location.path('/');
      });
    }
  }

  /* delete blog */
  $scope.delete_blog = function(blog){
    $http.delete('/blog/' + blog.id).then(function(data){
      $scope.get_blogs();
    });
  }

});