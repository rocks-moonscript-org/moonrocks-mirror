local plugin_name = "impart"
local package_name = "haproxy-" .. plugin_name
local package_version = "0.1.1"
local rockspec_revision = "1"


rockspec_format = "3.0"
package = package_name
version = package_version .. "-" .. rockspec_revision
supported_platforms = { "linux", "macosx" }
source = {
  url = "https://dl.impartsecurity.net/artifacts/plugins/haproxy/lua/" ..
      package_version .. "/artifacts/impart-" .. package_version .. ".tar.gz",
  file = "impart-" .. package_version .. ".tar.gz",
  dir = "."
}

description = {
  summary = "Impart Security's HAProxy module.",
  homepage = "https://www.impart.security/",
  license = "Apache-2.0",
  labels = { "security", "api", "waf" }
}

dependencies = {
  "lua-cbor >= 1.0.0",
  "luaposix >= 36.2.1",
  "bit32",
}

test_dependencies = {
  "luasocket >= 3.1.0"
}

build = {
  type = "builtin",
  modules = {
    ["haproxy." .. plugin_name] = "haproxy/" .. plugin_name .. ".lua",
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

test = {
  type = "busted",
  platforms = {
    windows = {
      flags = { "--exclude-tags=ssh,git,unix", "--defer-print", "-v", "-k" }
    },
    unix = {
      flags = { "--exclude-tags=ssh,git", "--defer-print", "-v", "-k" }
    }
  }
}
