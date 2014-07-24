'use strict';

angular.module('mainApp', ['ngReact', 'ngRoute']);

/* change default template tags */
angular.module('mainApp').config(['$interpolateProvider', function($interpolateProvider){
    $interpolateProvider.startSymbol('{[{');
    $interpolateProvider.endSymbol('}]}');
}]);

angular.module('mainApp').controller('adminController', function($scope, $http){
  $http.get('/blog/').then(function(data){
      $scope.data = data.data;
  });
});