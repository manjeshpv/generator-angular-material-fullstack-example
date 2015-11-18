  'use strict'

  angular.module 'cmsApp'
  .controller 'DialogController', ($scope, $mdDialog) ->

    $scope.closeDialog = ->
      $mdDialog.hide()
      return


