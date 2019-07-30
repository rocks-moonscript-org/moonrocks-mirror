package = "kong-forwarded-user-auth"
version = "0.1.0-0"

source = {
  url = "git://github.com/upyun/kong-forwarded-user-auth",
  tag = "0.1.0"
}

supported_platforms = {"linux", "macosx"}
description = {
  summary = "Access Control with X-Forwarded-User header",
  license = "Apache 2.0",
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.forwarded-user-auth.handler"] = "kong/plugins/forwarded-user-auth/handler.lua",
    ["kong.plugins.forwarded-user-auth.schema"] = "kong/plugins/forwarded-user-auth/schema.lua"
  }
}
