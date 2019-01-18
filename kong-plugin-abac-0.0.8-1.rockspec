package = "kong-plugin-abac"  -- TODO: rename, must match the info in the filename of this rockspec!
                              -- as a convention; stick to the prefix: `kong-plugin-`
version = "0.0.8-1"           -- TODO: renumber, must match the info in the filename of this rockspec!

supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/edenlabllc/kong-plugin-abac",
  tag = "0.0.8"
}

description = {
  summary = "Kong is a scalable and customizable API Management Layer built on top of Nginx.",
  homepage = "http://getkong.org",
  license = "MIT"
}

dependencies = {
  "lua-resty-http == 0.12",
  "dkjson == 2.5",
}

local pluginName = "abac"
build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua"
  }
}
