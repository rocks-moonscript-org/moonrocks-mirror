package = "kong-auth-key-signature"
version = "0.2.0-4"
description = {
    summary = "This package send request with token to authen services",
    homepage = "http://getkong.org",
    license = "Apache 2.0"
}

supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/thanhdongnguyen/kong-auth-key-signature"
}

dependencies = {
}
build = {
    type = "builtin",
    modules = {
        ["kong.plugins.kong-auth-key-signature.handler"] = "kong/plugins/kong-auth-key-signature/handler.lua",
        ["kong.plugins.kong-auth-key-signature.schema"] = "kong/plugins/kong-auth-key-signature/schema.lua"
    }
}
