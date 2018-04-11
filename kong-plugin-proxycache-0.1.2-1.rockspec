package = "kong-plugin-proxycache"
version = "0.1.2-1"

local pluginName = package:match("^kong%-plugin%-(.+)$")  -- "proxycache"

supported_platforms = {"linux", "macosx"}
source = {
  -- these are initially not required to make it work
  url = "git://github.com/andy-zhangtao/proxycache",
  tag = "v0.1.2",
  branch="master"
}

description = {
  summary = "Kong Plugin Proxycache. Use for cache response temporary.",
  homepage = "https://github.com/andy-zhangtao/proxycache",
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