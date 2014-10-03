RestStop =
    addRoutes: (collection) ->
        name = collection._name
        Router.route "#{name}",
            where: "server"
            method: "GET"
            action: (req, res, next) ->
                res.send collection.find()
