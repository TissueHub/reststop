# Prevent iron:router from handling client-side routing during testing.
# See https://github.com/EventedMind/iron-router/blob/devel/test/helpers.js
Router.configure autoStart: false, autoRender: false

# Tests
Tinytest.add 'sanity check', (test) ->
    test.equal true, true

Tinytest.add "RestStop is exported", (test) ->
    test.equal typeof RestStop, "object"

Tinytest.add "addRoutes is a function", (test) ->
    test.equal typeof RestStop.addRoutes, "function"

Tinytest.add "addRoutes adds routes given a collection", (test) ->
    Dogs = new Meteor.Collection "dogs"
    calls = []
    originalFind = Dogs.find
    Dogs.find = ->
        calls.push thisArg: @, args: arguments
    # Add the routes
    RestStop.addRoutes Dogs

    test.equal Router.routes.length == 1, true
    test.equal Router.routes[0].originalPath, "/dogs"
    # Need to test running the route.
