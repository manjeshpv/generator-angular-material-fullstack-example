'use strict'

angular.module 'cmsApp'
.config ($stateProvider) ->
  $stateProvider
  .state 'main',
    url: '/'
    templateUrl: 'app/views/main/main.html'
    controller: 'MainCtrl'
