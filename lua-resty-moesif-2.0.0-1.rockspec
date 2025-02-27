package = "lua-resty-moesif"  -- TODO: rename, must match the info in the filename of this rockspec!
                                  -- as a convention; stick to the prefix: `kong-plugin-`
version = "2.0.0-1"               -- TODO: renumber, must match the info in the filename of this rockspec!
-- The version '2.0.0' is the source code version, the trailing '1' is the version of this rockspec.
-- whenever the source version changes, the rockspec should be reset to 1. The rockspec version is only
-- updated (incremented) when this file changes, but the source remains the same.

-- TODO: This is the name to set in the Kong configuration `custom_plugins` setting.
-- Here we extract it from the package name.
local pluginName = package:match("^lua%-resty%-(.+)$")  -- "moesif"

supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/Moesif/lua-resty-moesif",
  tag = "2.0.0"
}

description = {
  summary = "Moesif plugin for Openresty",
  homepage = "http://moesif.com",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
  "luasocket >= 3.0rc1",
  "lua-cjson >= 2.1.0.6",
  "luaxml >= 101012",
  "moesifapi-lua"
}

build = {
  type = "builtin",
  modules = {
    ["lua.resty.moesif.send_event"] = "lua/resty/moesif/send_event.lua",
    ["lua.resty.moesif.send_event_3Scale"] = "lua/resty/moesif/send_event_3Scale.lua",
    ["lua.resty.moesif.log"] = "lua/resty/moesif/log.lua",
    ["lua.resty.moesif.moesif_ser"] = "lua/resty/moesif/moesif_ser.lua",
    ["lua.resty.moesif.helpers"] = "lua/resty/moesif/helpers.lua",
    ["lua.resty.moesif.read_req_body"] = "lua/resty/moesif/read_req_body.lua",
    ["lua.resty.moesif.read_res_body"] = "lua/resty/moesif/read_res_body.lua"
  }
}
