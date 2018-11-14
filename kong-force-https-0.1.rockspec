package = "kong-force-https"
version = "0.1"
source = {
    url = "git://git.rouing.me/kong/force-https/",
    branch = "master"
}
description = {
    summary = "A Kong plugin for redirecting HTTP traffic to HTTPS.",
    detailed = [[
      Redirects traffic from HTTP to HTTPS (currently only offers 301 redirect).
    ]],
    homepage = "https://git.rouing.me/kong/force-https/",
    license = "MIT"
}
dependencies = {
}
build = {
    type = "builtin",
    modules = {
    ["kong.plugins.force-https.handler"] = "kong/plugins/force-https/handler.lua",
    ["kong.plugins.force-https.schema"] = "kong/plugins/force-https/schema.lua",
    }
}
