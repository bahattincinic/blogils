'use strict';

angular.module('mainApp').config(['$routeProvider', function($routeProvider) {
    $routeProvider.when('/', {
        templateUrl: '/linker/js/apps/views/list_blog.html',
        action: 'blogController'
    }).when('/add-blog', {
        templateUrl: '/linker/js/apps/views/form_blog.html',
        action: 'blogController'
    }).when('/edit/:Id', {
        templateUrl: '/linker/js/apps/views/form_blog.html',
        action: 'blogController'
    }).when('/update-profile/:Id', {
        templateUrl: '/linker/js/apps/views/profile_form.html',
        action: 'userController'
    }).otherwise({
       redirectTo: '/'
    });
}]);