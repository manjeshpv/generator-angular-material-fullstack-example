'use strict'

angular.module 'cmsApp'
.controller 'ShellCtrl', ($scope, $location) ->
  

  $scope.isActive = (route) ->
    route is $location.path()

  $scope.toggleLeft = ->
    $mdSidenav('left').toggle()
    return

  originatorEv = undefined

  $scope.openMenu = ($mdOpenMenu, ev) ->
    originatorEv = ev
    $mdOpenMenu ev
    return

  $scope.notificationsEnabled = true

  $scope.toggleNotifications = ->
    $scope.notificationsEnabled = !$scope.notificationsEnabled
    return

  $scope.redial = ->
    $mdDialog.show $mdDialog.alert().targetEvent(originatorEv).clickOutsideToClose(true).parent('body').title('Suddenly, a redial').content('You just called a friend; who told you the most amazing story. Have a cookie!').ok('That was easy')
    originatorEv = null
    return

  $scope.checkVoicemail = ->
    # This never happens.
    return

  $scope.showAddDialog = ($event) ->
    parentEl = angular.element(document.body)
    $mdDialog.show
      parent: parentEl
      targetEvent: $event
      templateUrl: 'components/shell/dialog/dialog.html'
      controller: DialogController
    return
