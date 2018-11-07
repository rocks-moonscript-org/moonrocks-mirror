package = "kong-auto-https"
version = "0.0.1-3"
source = {
    url = "git://github.com/davidqhr/kong-auto-https",
    branch = "master"
}
build = {
    type = "builtin",
    modules = {
        ["kong.plugins.kong-auto-https.handler"] = "src/handler.lua",
        ["kong.plugins.kong-auto-https.schema"] = "src/schema.lua",
    }
}

