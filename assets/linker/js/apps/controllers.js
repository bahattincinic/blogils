'use strict';

angular.module('mainApp', ['ngReact', 'ngResource', 'ngRoute', 'textAngular']);

/* change default template tags */
angular.module('mainApp').config(['$interpolateProvider', function($interpolateProvider){
    $interpolateProvider.startSymbol('{[{');
    $interpolateProvider.endSymbol('}]}');
}]);

angular.module('mainApp').controller('BaseAdminController', function($scope, $resource, $location, $routeParams){

  $scope.get = function(){
    if ($routeParams.Id){
        $scope.resource.get({Id: $routeParams.Id}, function(data){
            $scope.form = data;
        });
    }else{
        $scope.resource.query(function(data){
            $scope.data = data;
        });
    }
  }
  $scope.get();

  $scope.save = function(){
    if($routeParams.Id){
      /* update */
      $scope.resource.update({Id: $routeParams.Id}, $scope.form, function(){
        alertify.success("Updated");
      });
    }else{
      /* create */
      var instance = new $scope.resource($scope.form);
      instance.$save(function(){
        $location.path($scope.redirect_url);
      });
    }
  }

  $scope.delete = function(instance){
    $scope.resource.delete({Id: instance.id}, function(){
        $scope.get();
        alertify.success("Deleted");
    })
  }

})


angular.module('mainApp').controller('blogController', function($scope, $resource, $location, $routeParams, $controller){
  $scope.form = {title: '', summary: '', description: ''};
  $scope.resource = $resource('/blog/:Id', {Id:'@id'}, { 'update': { method:'PUT' }});
  $scope.redirect_url = '/';

  $controller('BaseAdminController', {$scope: $scope});
});


angular.module('mainApp').controller('userController', function($scope, $resource, $location, $routeParams, $controller){
  $scope.form = {username: '', email: '', password: ''};
  $scope.resource = $resource('/user/:Id', {Id:'@id'}, { 'update': { method:'PUT' }});
  $scope.redirect_url = '/';

  $controller('BaseAdminController', {$scope: $scope});
});