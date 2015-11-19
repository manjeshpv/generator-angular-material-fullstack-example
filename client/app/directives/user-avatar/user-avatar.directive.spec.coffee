'use strict'

describe 'Directive: userAvatar', ->

  # load the directive's module
  beforeEach module 'cmsApp'
  element = undefined
  scope = undefined
  beforeEach inject ($rootScope) ->
    scope = $rootScope.$new()

  it 'should make hidden element visible', inject ($compile) ->
    element = angular.element '<user-avatar></user-avatar>'
    element = $compile(element) scope
    expect(element.text()).toBe 'this is the userAvatar directive'
