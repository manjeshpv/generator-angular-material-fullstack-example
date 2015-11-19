'use strict'

angular.module 'cmsApp'
.controller 'UsersCtrl', ($scope, $mdBottomSheet, $mdDialog) ->
  $scope.message = 'Hello'

  $scope.users = [
    {
      username: "username",
      email: 'demo@example.com',
      phone: '9844717220',
      name: 'Manjesh V',
      role: "Adminstrator"
    },
    {
      username: "username",
      email: 'demo@example.com',
      phone: '9844717220',
      name: 'Manjesh V',
      role: "Adminstrator"
    },
    {
      username: "username",
      email: 'demo@example.com',
      phone: '9844717220',
      name: 'Manjesh V',
      role: "Adminstrator"
    },
    {
      username: "username"
      email: 'demo@example.com',
      phone: '9844717220',
      name: 'Manjesh V',
      role: "Adminstrator"
    },
    {
      username: "username",
      email: 'demo@example.com',
      phone: '9844717220',
      name: 'Manjesh V',
      role: "Adminstrator"
    }
  ];
  $scope.alert = ''

  $scope.showListBottomSheet = ($event) ->
    $scope.alert = ''
    $mdBottomSheet.show(
      template: '<md-bottom-sheet class="md-list md-has-header"> <md-subheader>Settings</md-subheader> <md-list> <md-item ng-repeat="item in items"><md-item-content md-ink-ripple flex class="inset"> <a flex aria-label="{{item.name}}" ng-click="listItemClick($index)"> <span class="md-inline-list-icon-label">{{ item.name }}</span> </a></md-item-content> </md-item> </md-list></md-bottom-sheet>'
      controller: 'ListBottomSheetCtrl'
      targetEvent: $event
    ).then (clickedItem) ->
      $scope.alert = clickedItem.name + ' clicked!'
      return
    return

  $scope.showAdd = (ev) ->
    $mdDialog.show(
      controller: 'DialogController'
      template: '<md-dialog aria-label="Mango (Fruit)"> <md-content class="md-padding"> <form name="userForm"> <div layout layout-sm="column"> <md-input-container flex> <label>First Name</label> <input ng-model="user.firstName" placeholder="Placeholder text"> </md-input-container> <md-input-container flex> <label>Last Name</label> <input ng-model="theMax"> </md-input-container> </div> <md-input-container flex> <label>Address</label> <input ng-model="user.address"> </md-input-container> <div layout layout-sm="column"> <md-input-container flex> <label>City</label> <input ng-model="user.city"> </md-input-container> <md-input-container flex> <label>State</label> <input ng-model="user.state"> </md-input-container> <md-input-container flex> <label>Postal Code</label> <input ng-model="user.postalCode"> </md-input-container> </div> <md-input-container flex> <label>Biography</label> <textarea ng-model="user.biography" columns="1" md-maxlength="150"></textarea> </md-input-container> </form> </md-content> <div class="md-actions" layout="row"> <span flex></span> <md-button ng-click="answer(\'not useful\')"> Cancel </md-button> <md-button ng-click="answer(\'useful\')" class="md-primary"> Save </md-button> </div></md-dialog>'
      targetEvent: ev
    ).then ((answer) ->
        console.log("Answer is",answer)
        $scope.alert = 'You said the information was "' + answer + '".'
        return
      ), ->
        $scope.alert = 'You cancelled the dialog.'
        return
    return
