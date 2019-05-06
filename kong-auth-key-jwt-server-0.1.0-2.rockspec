package = "kong-auth-key-jwt-server"
version = "0.1.0-2"
description = {
    summary = "this package will send request to jwt server get token and authen",
    homepage = "http://getkong.org",
    license = "Apache 2.0"
}

supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/thanhdongnguyen/kong-auth-key-jwt-sever"
}

dependencies = {
}
build = {
    type = "builtin",
    modules = {
        ["kong.plugins.kong-auth-key-jwt-server.handler"] = "kong/plugins/kong-auth-key-jwt-server/handler.lua",
        ["kong.plugins.kong-auth-key-jwt-server.schema"] = "kong/plugins/kong-auth-key-jwt-server/schema.lua"
    }
}
