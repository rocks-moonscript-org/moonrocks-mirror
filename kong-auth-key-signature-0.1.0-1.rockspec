package = "kong-auth-key-signature"
version = "0.1.0-1"
description = {
    summary = "This package send request with token to authen services",
    homepage = "http://getkong.org",
    license = "Apache 2.0"
}

supported_platforms = {"linux", "macosx"}
source = {
  url = "http://github.com/Kong/kong-plugin.git",
  tag = "0.1.0"
}

dependencies = {
}
build = {
    type = "builtin",
    modules = {
        ["kong.plugins.auth-key-signature.handle"] = "auth-key-signature/kong/plugins/auth-key-signature/handle.lua",
        ["kong.plugins.auth-key-signature.schema"] = "auth-key-signature/kong/plugins/auth-key-signature/schema.lua"
    }
}