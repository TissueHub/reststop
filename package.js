Package.describe({
    summary: "Adds a default RESTful interface for your collections.",
    version: "0.1.0",
    git: "https://github.com/TissueHub/reststop.git"
});

Package.onUse(function(api) {

 // Dependencies
    api.versionsFrom('METEOR@0.9.3.1');
    api.use(["standard-app-packages", "coffeescript", "iron:router"]);

 // Package Exports and Files
    if (api.export) api.export("RestStop");
    api.addFiles('robbinsd:reststop.coffee');
});

Package.onTest(function(api) {
    api.use(["standard-app-packages", "coffeescript", "iron:router"], "server");
    api.use('tinytest', "server");
    api.use('robbinsd:reststop', "server");
    api.addFiles('robbinsd:reststop-tests.coffee');
});
