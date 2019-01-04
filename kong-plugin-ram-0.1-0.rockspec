package = "kong-plugin-ram"                                
version = "0.1-0"               

supported_platforms = {"linux", "macosx"}
local pluginName = package:match("^kong%-plugin%-(.+)$")

source = {
  url = "git://github.com/bitdrive/kong-plugin-ram",
  branch = "master"
  -- tag = "0.1.0"
}

description = {
  summary = "Resource Access Management on top of Kong",
  homepage = "https://github.com/bitdrive/kong-plugin-ram",
  license = "Apache 2.0"
}

dependencies = {
	"lua ~> 5.1"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "src/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "src/schema.lua",
  }
}
