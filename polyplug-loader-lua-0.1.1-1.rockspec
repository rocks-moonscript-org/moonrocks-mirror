package = "polyplug-loader-lua"
version = "0.1.1-1"

source = {
   url = "https://github.com/polyplug/polyplug/releases/download/v0.1.1/polyplug-lua-0.1.1.tar.gz",
   dir = "polyplug-lua-0.1.1",
}

description = {
   summary = "polyplug Lua bundle loader for LuaJIT hosts",
   detailed = [[
      Loader that lets a polyplug LuaJIT host load Lua plugin bundles, each in
      its own isolated VM. Supports hot-reload. Bundled with the prebuilt
      libpolyplug_lua loader for Linux, macOS, and Windows.
   ]],
   homepage = "https://github.com/polyplug/polyplug",
   license = "MIT",
}

-- Requires LuaJIT (uses the FFI module); stock PUC-Lua is unsupported, so no
-- "lua >= X" constraint is declared here.
dependencies = {
   "polyplug",
}

build = {
   type = "builtin",
   modules = {
      ["polyplug.loaders.lua"] = "polyplug/loaders/lua.lua",
   },
   -- Install ONLY the current platform's native (per-platform override) so
   -- the build never aborts on another platform's missing binary (which
   -- would leave zero modules installed). The .lua module always installs.
   platforms = {
      linux = { install = { lua = { ["polyplug_lua"] = "_native/linux-x64/libpolyplug_lua.so" } } },
      macosx = { install = { lua = { ["polyplug_lua"] = "_native/macos-arm64/libpolyplug_lua.dylib" } } },
      windows = { install = { lua = { ["polyplug_lua"] = "_native/windows-x64/polyplug_lua.dll" } } },
   },
}
