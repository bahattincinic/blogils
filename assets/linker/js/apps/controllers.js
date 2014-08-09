'use strict';

angular.module('mainApp', ['ngReact', 'ngResource', 'ngRoute', 'textAngular', 'formBuilder']);

/* change default template tags */
angular.module('mainApp').config(['$interpolateProvider', function($interpolateProvider){
    $interpolateProvider.startSymbol('{[{');
    $interpolateProvider.endSymbol('}]}');
}]);

angular.module('mainApp').controller('BaseAdminController', function($scope, $resource, $location, $routeParams, formHelperFactory){

  $scope.get = function(){
    if ($routeParams.Id){
        $scope.resource.get({Id: $routeParams.Id}, function(data){
            formHelperFactory.setObject($scope.form, data);
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
      $scope.resource.update({Id: $routeParams.Id}, formHelperFactory.getObject($scope.form), function(){
        alertify.success("Updated");
      });
    }else{
      /* create */
      var instance = new $scope.resource(formHelperFactory.getObject($scope.form));
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


angular.module('mainApp').controller('blogController', function($scope, $resource, $location, $routeParams, $controller, formHelperFactory){
  $scope.form = {
    attributes: [
      {
        title: 'Title',
        type: 'textfield',
        value: '',
        required: true,
        name: 'title'
      },
      {
        title: 'Summary',
        type: 'textarea',
        value: '',
        required: true,
        name: 'summary'
      },
      {
        title: 'Description',
        type: 'editor',
        value: '',
        name: 'description'
      },
      {
        type: 'submit',
        value: 'Save'
      }
    ]
  }
  $scope.resource = $resource('/blog/:Id', {Id:'@id'}, { 'update': { method:'PUT' }});
  $scope.redirect_url = '/';

  $controller('BaseAdminController', {$scope: $scope});
});


angular.module('mainApp').controller('userController', function($scope, $resource, $location, $routeParams, $controller, formHelperFactory){
  $scope.form = {
    attributes: [
      {
        title: 'Username',
        type: 'textfield',
        value: '',
        required: true,
        name: 'username'
      },
      {
        title: 'E-Mail',
        type: 'email',
        value: '',
        required: true,
        name: 'email'
      },
      {
        title: 'password (optional)',
        type: 'password',
        value: '',
        name: 'password'
      },
      {
        type: 'submit',
        value: 'Save'
      }
    ]
  }
  $scope.resource = $resource('/user/:Id', {Id:'@id'}, { 'update': { method:'PUT' }});
  $scope.redirect_url = '/';

  $controller('BaseAdminController', {$scope: $scope});
});