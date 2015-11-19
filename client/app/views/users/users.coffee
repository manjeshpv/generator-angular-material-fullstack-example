'use strict'

angular.module 'cmsApp'
.config ($stateProvider) ->
  $stateProvider.state 'users',
    url: '/users'
    templateUrl: 'app/views/users/users.html'
    controller: 'UsersCtrl'
