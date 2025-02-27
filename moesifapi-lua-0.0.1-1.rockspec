package = "moesifapi-lua"  -- TODO: rename, must match the info in the filename of this rockspec!
                                  -- as a convention; stick to the prefix: `kong-plugin-`
version = "0.0.1-1"               -- TODO: renumber, must match the info in the filename of this rockspec!
-- The version '0.0.1' is the source code version, the trailing '1' is the version of this rockspec.
-- whenever the source version changes, the rockspec should be reset to 1. The rockspec version is only
-- updated (incremented) when this file changes, but the source remains the same.

-- TODO: This is the name to set in the Kong configuration `custom_plugins` setting.
-- Here we extract it from the package name.
local pluginName = package:match("^moesifapi%-lua%-(.+)$")  -- "moesif"

supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/Moesif/moesifapi-lua/",
  tag = "0.0.1"
}

description = {
  summary = "Moesif API Lua Base library",
  homepage = "http://moesif.com",
  license = "MIT"
}

dependencies = {
  "lua-resty-http",
  "lua-zlib"
}

build = {
  type = "builtin",
  modules = {
    ["moesifapi.lua.moesif_client"] = "moesifapi/lua/moesif_client.lua",
    ["moesifapi.lua.prepare_payload"] = "moesifapi/lua/prepare_payload.lua",
    ["moesifapi.lua.http_connection"] = "moesifapi/lua/http_connection.lua",
    ["moesifapi.lua.client_ip"] = "moesifapi/lua/client_ip.lua",
    ["moesifapi.lua.base64"] = "moesifapi/lua/base64.lua",
    ["moesifapi.lua.app_config"] = "moesifapi/lua/app_config.lua",
    ["moesifapi.lua.event_helper"] = "moesifapi/lua/event_helper.lua",
    ["moesifapi.lua.regex_config_helpers"] = "moesifapi/lua/regex_config_helpers.lua",
    ["moesifapi.lua.moesif_gov"] = "moesifapi/lua/moesif_gov.lua",
    ["moesifapi.lua.helpers"] = "moesifapi/lua/helpers.lua",
    ["moesifapi.lua.governance_helpers"] = "moesifapi/lua/governance_helpers.lua",
    ["moesifapi.lua.zzlib"] = "moesifapi/lua/zzlib.lua",
    ["moesifapi.lua.parse_body"] = "moesifapi/lua/parse_body.lua",
  }
}
