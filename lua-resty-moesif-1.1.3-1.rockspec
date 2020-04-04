package = "lua-resty-moesif"  -- TODO: rename, must match the info in the filename of this rockspec!
                                  -- as a convention; stick to the prefix: `kong-plugin-`
version = "1.1.3-1"               -- TODO: renumber, must match the info in the filename of this rockspec!
-- The version '1.1.3' is the source code version, the trailing '1' is the version of this rockspec.
-- whenever the source version changes, the rockspec should be reset to 1. The rockspec version is only
-- updated (incremented) when this file changes, but the source remains the same.

-- TODO: This is the name to set in the Kong configuration `custom_plugins` setting.
-- Here we extract it from the package name.
local pluginName = package:match("^lua%-resty%-(.+)$")  -- "moesif"

supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/Moesif/lua-resty-moesif",
  tag = "1.1.3"
}

description = {
  summary = "Moesif plugin for Openresty",
  homepage = "http://moesif.com",
  license = "MIT"
}

dependencies = {
}

build = {
  type = "builtin",
  modules = {
    ["lua.resty.moesif.send_event"] = "lua/resty/moesif/send_event.lua",
    ["lua.resty.moesif.log"] = "lua/resty/moesif/log.lua",
    ["lua.resty.moesif.moesif_ser"] = "lua/resty/moesif/moesif_ser.lua",
    ["lua.resty.moesif.helpers"] = "lua/resty/moesif/helpers.lua",
    ["lua.resty.moesif.connection"] = "lua/resty/moesif/connection.lua",
    ["lua.resty.moesif.lib_deflate"] = "lua/resty/moesif/lib_deflate.lua",
    ["lua.resty.moesif.client_ip"] = "lua/resty/moesif/client_ip.lua",
    ["lua.resty.moesif.zzlib"] = "lua/resty/moesif/zzlib.lua",
    ["lua.resty.moesif.base64"] = "lua/resty/moesif/base64.lua",
    ["lua.resty.moesif.utf8_validator"] = "lua/resty/moesif/utf8_validator.lua",
    ["lua.resty.moesif.read_req_body"] = "lua/resty/moesif/read_req_body.lua",
    ["lua.resty.moesif.read_res_body"] = "lua/resty/moesif/read_res_body.lua"
  }
}
