package = "kong-force-ssl"
version = "1.0.0-0"
source = {
    url = "git://github.com/imanel/kong-force-ssl",
    branch = "master"
}
description = {
    summary = "Redirect http requests to https",
    detailed = [[
      Redirect http requests to https
    ]],
    homepage = "https://github.com/imanel/kong-force-ssl",
    license = "MIT"
}
dependencies = {
}
build = {
    type = "builtin",
    modules = {
        ["kong.plugins.force-ssl.handler"] = "src/handler.lua",
        ["kong.plugins.force-ssl.schema"] = "src/schema.lua",
    }
}
