package = "verify-token"

-- the version number must match the info in the file name of this
-- rockspec. The rockspec version is only incremented when this file changes.
version = "1.0.0-1"

supported_platforms = {"linux", "macosx"}
source = {
  url = "git+ssh://git@github.com:localz/kong-plugin-verify-token.git",
  tag = "1.0.0"
}

description = {
  summary = "",
  homepage = "",
  license = "MIT"
}

dependencies = {
  "lua-resty-jwt ~> 0.1.11-0"
}

local pluginName = "verify-token"
build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
    ["kong.plugins."..pluginName..".daos"] = "kong/plugins/"..pluginName.."/daos.lua",
    ["kong.plugins."..pluginName..".api"] = "kong/plugins/"..pluginName.."/api.lua",
    ["kong.plugins."..pluginName..".migrations.postgres"] = "kong/plugins/"..pluginName.."/migrations/postgres.lua"
  }
}
