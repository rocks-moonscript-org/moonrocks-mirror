package = "kong-plugin-mihelloworld"
version = "0.1.0-1"

supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/majaseremet/kong-plugin",
  tag = "v0.1.0"
}

description = {
  summary = "Kong is a scalable and customizable API Management Layer built on top of Nginx.",
  homepage = "http://getkong.org",
  license = "Apache 2.0"
}

dependencies = {
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.mihelloworld.handler"] = "kong/plugins/mihelloworld/handler.lua",
    ["kong.plugins.mihelloworld.schema"] = "kong/plugins/mihelloworld/schema.lua"
  }
}
