package = "kong-auto-https"
version = "0.0.1-1"
source = {
    url = "https://github.com/davidqhr/kong-auto-https.git",
    branch = "master"
}
build = {
    type = "builtin",
    modules = {
        ["kong.plugins.kong-auto-https.handler"] = "src/handler.lua",
        ["kong.plugins.kong-auto-https.schema"] = "src/schema.lua",
    }
}

