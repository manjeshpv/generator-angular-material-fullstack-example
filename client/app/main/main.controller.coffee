'use strict'

angular.module 'cmsApp'
.controller 'MainCtrl', ($scope, $http) ->
  $scope.awesomeThings = []

  $scope.getColor = ($index) ->
    _d = ($index + 1) % 11
    bg = ''
    switch _d
      when 1
        bg = 'red'
      when 2
        bg = 'green'
      when 3
        bg = 'darkBlue'
      when 4
        bg = 'blue'
      when 5
        bg = 'yellow'
      when 6
        bg = 'pink'
      when 7
        bg = 'darkBlue'
      when 8
        bg = 'purple'
      when 9
        bg = 'deepBlue'
      when 10
        bg = 'lightPurple'
      else
        bg = 'yellow'
        break
    bg

  $scope.getSpan = ($index) ->
    _d = ($index + 1) % 11
    if _d == 1 or _d == 5
      return 2
    return

  $http.get('/api/things').success (awesomeThings) ->
    $scope.awesomeThings = awesomeThings
    

