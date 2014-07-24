'use strict';

angular.module('mainApp').config(['$routeProvider', function($routeProvider) {
    $routeProvider.when('/', {
        templateUrl: '/linker/js/apps/views/list_blog.html',
        action: 'blogController'
    }).when('/add-blog', {
        templateUrl: '/linker/js/apps/views/blog_form.html',
        action: 'blogController'
    }).when('/edit/:blogId', {
        templateUrl: '/linker/js/apps/views/blog_form.html',
        action: 'blogController'
    }).otherwise({
       redirectTo: '/'
    });
}]);