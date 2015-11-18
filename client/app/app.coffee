'use strict'

angular.module 'cmsApp', [
  'ngCookies',
  'ngResource',
  'ngSanitize',
  'ngAnimate',
  'ngMessages',
  'ui.router',
  'ngMaterial'
]
.config ($stateProvider, $urlRouterProvider, $locationProvider, $mdIconProvider) ->
  $mdIconProvider
  .defaultFontSet( 'fontawesome' )
  .defaultIconSet('my/app/icons.svg')       # Register a default set of SVG icons
  .iconSet('social', 'assets/iconsets/social-icons.svg')   # Register a named icon set of SVGs
  .iconSet('avatar', 'assets/iconsets/avatar-icons.svg')    # Register a specific icon (by name)
  .iconSet('navigation', 'assets/iconsets/navigation-icons.svg')    # Register a specific icon (by name)
  .iconSet('content', 'assets/iconsets/content-icons.svg')    # Register a specific icon (by name)
  .iconSet('communication', 'assets/iconsets/communication-icons.svg')    # Register a specific icon (by name)

  .icon('work:chair', 'my/app/chair.svg');  # Register icon in a specific set
  #  $mdIconProvider
  #  .iconSet('social', 'assets/iconsets/avatar-icons.svg', 24)
  #  .defaultIconSet('img/icons/sets/core-icons.svg', 24);

  $urlRouterProvider
  .otherwise '/'

  $locationProvider.html5Mode true
