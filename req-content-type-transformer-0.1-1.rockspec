package = "req-content-type-transformer"
version = "0.1-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/spiritonly/kong-plugin-req-content-type-transformer",
  branch = "master"
}
description = {
  summary = "transfom request content type from json to form-urlencoded or form-urlencoded to json",
  homepage = "http://getkong.org",
  license = "Apache V2.0"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.req-content-type-transformer.handler"] = "handler.lua",
    ["kong.plugins.req-content-type-transformer.schema"] = "schema.lua",
    ["kong.plugins.req-content-type-transformer.access"] = "access.lua"
  }
}
