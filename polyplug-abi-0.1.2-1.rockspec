package = "polyplug-abi"
version = "0.1.2-1"

source = {
   url = "https://github.com/polyplug/polyplug/releases/download/v0.1.2/polyplug-lua-0.1.2.tar.gz",
   dir = "polyplug-lua-0.1.2",
}

description = {
   summary = "polyplug ABI type definitions for LuaJIT",
   detailed = [[
      LuaJIT FFI type definitions mirroring the frozen polyplug C ABI:
      HostApi, BundleInitContext, StringView, AbiError, AbiErrorCode and the
      built-in-type helpers. This is the shared foundation required by both the
      polyplug host library and the polyplug-guest plugin library.
   ]],
   homepage = "https://github.com/polyplug/polyplug",
   license = "MIT",
}

-- Requires LuaJIT (uses the FFI module); stock PUC-Lua is unsupported, so no
-- "lua >= X" constraint is declared here.
dependencies = {}

build = {
   type = "builtin",
   modules = {
      ["abi"] = "abi.lua",
      ["polyplug_abi"] = "polyplug_abi.lua",
   },
}
