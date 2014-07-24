'use strict';

angular.module('mainApp').config(['$routeProvider', function($routeProvider) {
    $routeProvider.when('/', {
        templateUrl: '/linker/js/apps/views/list.html',
        action: 'adminController'
    }).otherwise({
       redirectTo: '/'
    });
}]);