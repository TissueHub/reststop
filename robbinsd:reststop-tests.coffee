# Write your tests here!
# Here is an example.

# Prevent iron:router from handling client-side routing during testing.
# See https://github.com/EventedMind/iron-router/blob/devel/test/helpers.js
Router.configure autoStart: false, autoRender: false

# Tests
Tinytest.add 'sanity check', (test) ->
    test.equal true, true
