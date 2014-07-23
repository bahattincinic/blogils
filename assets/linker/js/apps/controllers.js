var app = angular.module('adminApp', ['ngReact', 'ngResource']);

/* change default template tags */
app.config(['$interpolateProvider', function($interpolateProvider){
    $interpolateProvider.startSymbol('{[{');
    $interpolateProvider.endSymbol('}]}');
}]);

app.controller('adminController', function($scope, $http){
  $http.get('/blog/').then(function(data){
      $scope.data = data.data;
  });
});