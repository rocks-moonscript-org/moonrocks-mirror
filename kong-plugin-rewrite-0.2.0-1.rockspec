package = "kong-plugin-rewrite"
version = "0.2.0-1"

local pluginName = package:match("^kong%-plugin%-(.+)$")  -- "rewrite"

supported_platforms = {"linux", "macosx"}
source = {
  -- these are initially not required to make it work
  url = "git://github.com/andy-zhangtao/rewrite",
  tag = "v0.2.0",
  branch="master"
}

description = {
  summary = "Kong Plugin Rewrite use for rewrite querst temporary.",
  homepage = "http://getkong.org",
  license = "MIT"
}

dependencies = {
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "schema.lua",
  }
}