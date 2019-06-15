package = "kong-auth-signature"
version = "0.1.0-2"
description = {
    summary = "This package send request with token to authen services",
    homepage = "http://getkong.org",
    license = "Apache 2.0"
}

supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/thanhdongnguyen/kong-auth-signature"
}

dependencies = {
}
build = {
    type = "builtin",
    modules = {
        ["kong.plugins.kong-auth-signature.handler"] = "kong/plugins/kong-auth-signature/handler.lua",
        ["kong.plugins.kong-auth-signature.schema"] = "kong/plugins/kong-auth-signature/schema.lua"
    }
}
