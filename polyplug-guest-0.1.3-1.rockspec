package = "polyplug-guest"
version = "0.1.3-1"

source = {
   url = "https://github.com/polyplug/polyplug/releases/download/v0.1.3/polyplug-lua-0.1.3.tar.gz",
   dir = "polyplug-lua-0.1.3",
}

description = {
   summary = "polyplug guest-side library for writing Lua plugins",
   detailed = [[
      LuaJIT FFI guest library for authoring polyplug plugin bundles in Lua.
      Provides the registration and dispatch helpers that generated guest
      bindings build on, threading the HostApi pointer and per-call arena
      through instances and call arguments (no VM globals).
   ]],
   homepage = "https://github.com/polyplug/polyplug",
   license = "MIT",
}

-- Requires LuaJIT (uses the FFI module); stock PUC-Lua is unsupported, so no
-- "lua >= X" constraint is declared here.
dependencies = {
   "polyplug-abi",
}

build = {
   type = "builtin",
   modules = {
      ["polyplug_guest"] = "polyplug_guest.lua",
   },
}
