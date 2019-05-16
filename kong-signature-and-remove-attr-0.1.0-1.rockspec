package = "kong-signature-and-remove-attr"
version = "0.1.0-1"
description = {
    summary = "This package send request with token to authen services",
    homepage = "http://getkong.org",
    license = "Apache 2.0"
}

supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/thanhdongnguyen/kong-signature-and-remove-attr"
}

dependencies = {
}
build = {
    type = "builtin",
    modules = {
        ["kong.plugins.kong-signature-and-remove-attr.handler"] = "kong/plugins/kong-signature-and-remove-attr/handler.lua",
        ["kong.plugins.kong-signature-and-remove-attr.schema"] = "kong/plugins/kong-signature-and-remove-attr/schema.lua"
    }
}
