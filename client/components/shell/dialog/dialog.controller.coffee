  'use strict'

  angular.module 'cmsApp'
  .controller 'DialogController', ($scope, $mdDialog) ->

    $scope.closeDialog = ->
      $mdDialog.hide()
      return

    $scope.hide = ->
      $mdDialog.hide()
      return

    $scope.cancel = ->
      $mdDialog.cancel()
      return

    $scope.answer = (answer) ->
      $mdDialog.hide answer
      return

    return
