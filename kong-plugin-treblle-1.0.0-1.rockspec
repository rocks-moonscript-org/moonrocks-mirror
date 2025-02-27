package = "kong-plugin-treblle"  -- TODO: rename, must match the info in the filename of this rockspec!
                                -- as a convention; stick to the prefix: `kong-plugin-`
version = "1.0.0-1"        -- TODO: renumber, must match the info in the filename of this rockspec!
-- The version '1.0.0' is the source code version, the trailing '1' is the version of this rockspec.
-- whenever the source version changes, the rockspec should be reset to 1. The rockspec version is only
-- updated (incremented) when this file changes, but the source remains the same.

-- TODO: This is the name to set in the Kong configuration `custom_plugins` setting.
-- Here we extract it from the package name.
local pluginName = package:match("^kong%-plugin%-(.+)$")  -- "treblle"

supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/Treblle/treblle-kong/",
  branch = "main"
}

description = {
  summary = "Treblle plugin for kong",
  homepage = "https://treblle.com",
  license = "MIT"
}

dependencies = {
  "lua-resty-http",
  "lua-zlib"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins.treblle.handler"] = "kong/plugins/treblle/handler.lua",
    ["kong.plugins.treblle.schema"] = "kong/plugins/treblle/schema.lua",
    ["kong.plugins.treblle.log"] = "kong/plugins/treblle/log.lua",
    ["kong.plugins.treblle.treblle_ser"] = "kong/plugins/treblle/treblle_ser.lua",
    ["kong.plugins.treblle.helpers"] = "kong/plugins/treblle/helpers.lua",
    ["kong.plugins.treblle.connection"] = "kong/plugins/treblle/connection.lua",
    ["kong.plugins.treblle.client_ip"] = "kong/plugins/treblle/client_ip.lua",
  }
}
