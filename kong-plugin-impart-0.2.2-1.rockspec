local plugin_name = "impart"
local package_name = "kong-plugin-" .. plugin_name
local package_version = "0.2.2"
local rockspec_revision = "1"


rockspec_format = "3.0"
package = package_name
version = package_version .. "-" .. rockspec_revision
supported_platforms = { "linux", "macosx" }
source = {
  url = "https://dl.impartsecurity.net/artifacts/plugins/kong/lua/" ..
      package_version .. "/artifacts/impart-" .. package_version .. ".tar.gz",
  file = "impart-" .. package_version .. ".tar.gz",
  dir = "."
}

description = {
  summary = "Impart Security's Kong plugin.",
  homepage = "https://www.impart.security/",
  license = "Apache-2.0",
  labels = { "security", "api", "waf" }
}

dependencies = {
  "lua-cbor >= 1.0.0",
  "luaposix >= 36.2.1"
}

build = {
  type = "builtin",
  modules = {
    ["kong.plugins." .. plugin_name .. ".handler"] = "kong/plugins/" .. plugin_name .. "/handler.lua",
    ["kong.plugins." .. plugin_name .. ".schema"] = "kong/plugins/" .. plugin_name .. "/schema.lua",
  },
  install = {
    lua = {
      ["impart.sdk.init"] = "sdks/lua/impart/sdk/init.lua",
      ["impart.sdk.client"] = "sdks/lua/impart/sdk/client.lua",
      ["impart.sdk.conn"] = "sdks/lua/impart/sdk/conn.lua",
      ["impart.sdk.const"] = "sdks/lua/impart/sdk/const.lua",
      ["impart.sdk.rpcmsgs"] = "sdks/lua/impart/sdk/rpcmsgs.lua",
    }
  }
}
