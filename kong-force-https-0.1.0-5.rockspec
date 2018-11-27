package = "kong-force-https"
version = "0.1.0-5"

source = {
    url = "https://git.rouing.me/kong/force-https/",
    branch = "master"
}

description = {
    summary = "Force HTTPS redirect for Kong API Gateway",
    homepage = "https://git.rouing.me/kong/force-https/",
    license = "MIT"
}

dependencies = {
}

build = {
    type = "builtin",
    modules = {
      ["kong.plugins.http-to-https.handler"] = "kong/plugins/force-https/handler.lua",
      ["kong.plugins.http-to-https.schema"] = "kong/plugins/force-https/schema.lua",
    }
}
