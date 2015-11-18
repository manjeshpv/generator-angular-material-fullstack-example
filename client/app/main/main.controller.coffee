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


  $scope.awesomeThings = [
    {
      name : 'Development Tools',
      info : 'Integration with popular tools such as Bower, Grunt, Karma, Mocha, JSHint, Node Inspector, Livereload, Protractor, Jade, Stylus, Sass, CoffeeScript, and Less.'
    }, {
      name : 'Server and Client integration',
      info : 'Built with a powerful and fun stack: MongoDB, Express, AngularJS, and Node.'
    }, {
      name : 'Smart Build System',
      info : 'Build system ignores `spec` files, allowing you to keep tests alongside code. Automatic injection of scripts and styles into your index.html'
    },  {
      name : 'Modular Structure',
      info : 'Best practice client and server structures allow for more code reusability and maximum scalability'
    },  {
      name : 'Optimized Build',
      info : 'Build process packs up your templates as a single JavaScript payload, minifies your scripts/css/images, and rewrites asset names for caching.'
    },{
      name : 'Deployment Ready',
      info : 'Easily deploy your app to Heroku or Openshift with the heroku and openshift subgenerators'
    }
  ]



