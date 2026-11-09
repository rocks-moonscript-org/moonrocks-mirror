rockspec_format = "3.0"
package = "epicauth"
version = "1.0.4-1"

source = {
   url = "git+https://github.com/EpicAuth/EpicAuth-Lua-SDK.git",
   tag = "v1.0.4"
}

description = {
   summary = "Official Lua SDK for EpicAuth Authentication System",
   detailed = [[
      Official Lua SDK for the EpicAuth platform (https://epicauth.cc).
      Provides full licensing, authentication, HWID verification, secure variables,
      file delivery, webhooks, and chat capabilities.
      Direct port of EpicAuth-TS-SDK with 100% API parity.
   ]],
   homepage = "https://epicauth.cc",
   maintainer = "EpicAuth Team",
   license = "Elastic-2.0"
}

dependencies = {
   "lua >= 5.1"
}

build = {
   type = "builtin",
   modules = {
      ["epicauth"] = "src/epicauth/init.lua",
      ["epicauth.client"] = "src/epicauth/client.lua",
      ["epicauth.errors"] = "src/epicauth/errors.lua",
      ["epicauth.crypto"] = "src/epicauth/crypto.lua",
      ["epicauth.http"] = "src/epicauth/http.lua",
      ["epicauth.hwid"] = "src/epicauth/hwid.lua",
      ["epicauth.json"] = "src/epicauth/json.lua"
   }
}
