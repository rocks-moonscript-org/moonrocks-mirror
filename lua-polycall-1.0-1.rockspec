rockspec_format = "3.0"
package = "lua-polycall"
version = "1.0-1"

source = {
   url = "git+https://github.com/obinexusmk2/lua-polycall.git",
   tag = "v1.0.0"
}

description = {
   summary = "Protocol-compliant Lua binding for LibPolyCall Trial v1",
   detailed = [[
      LibPolyCall Trial v1 Lua Adapter Binding.
      Protocol-compliant adapter for polycall.exe runtime.
      Program-first architecture: all execution flows through polycall.exe.
      Zero-trust validation at every state transition.
      State machine enforced: INIT -> HANDSHAKE -> AUTH -> READY.
   ]],
   homepage = "https://github.com/obinexusmk2/lua-polycall",
   issues_url = "https://github.com/obinexusmk2/lua-polycall/issues",
   license = "MIT",
   maintainer = "Nnamdi Michael Okpala <obinexuscomputing@gmail.com>"
}

dependencies = {
   "lua >= 5.3, < 5.5",
   "luasocket >= 3.0",
   "luasec >= 1.0",
   "lua-cjson >= 2.1"
}

build = {
   type = "builtin",
   modules = {
      ["polycall.core.binding"]    = "polycall/core/binding.lua",
      ["polycall.core.protocol"]   = "polycall/core/protocol.lua",
      ["polycall.core.state"]      = "polycall/core/state.lua",
      ["polycall.core.telemetry"]  = "polycall/core/telemetry.lua",
      ["polycall.core.auth"]       = "polycall/core/auth.lua",
      ["polycall.config.manager"]  = "polycall/config/manager.lua",
      ["polycall.config.validator"]= "polycall/config/validator.lua",
      ["polycall.cli.main"]        = "polycall/cli/main.lua",
      ["polycall.cli.registry"]    = "polycall/cli/registry.lua",
      ["polycall.utils.logger"]    = "polycall/utils/logger.lua",
      ["polycall.utils.validator"] = "polycall/utils/validator.lua",
      ["polycall.validators.setup"]= "polycall/validators/setup.lua",
      ["polycall"]                 = "polycall/init.lua"
   },
   install = {
      bin = { ["lua-polycall"] = "bin/lua-polycall" }
   }
}
