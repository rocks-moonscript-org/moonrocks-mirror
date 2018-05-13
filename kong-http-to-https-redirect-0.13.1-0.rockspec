package = "kong-http-to-https-redirect"
version = "0.13.1-0"
source = {
    url = "git://github.com/HappyValleyIO/kong-http-to-https-redirect",
    branch = "master"
}
description = {
    summary = "A Kong plugin for redirecting HTTP traffic to HTTPS.",
    detailed = [[
      Redirects traffic from HTTP to HTTPS (currently only offers 301 redirect).
    ]],
    homepage = "https://github.com/HappyValleyIO/kong-http-to-https-redirect",
    license = "MIT"
}
dependencies = {
}
build = {
    type = "builtin",
    modules = {
    ["kong.plugins.aliyun-http-filter.handler"] = "src/handler.lua",
    ["kong.plugins.aliyun-http-filter.schema"] = "src/schema.lua",
    }
}
