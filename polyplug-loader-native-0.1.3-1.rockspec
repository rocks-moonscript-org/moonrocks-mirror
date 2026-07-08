package = "polyplug-loader-native"
version = "0.1.3-1"

source = {
   url = "https://github.com/polyplug/polyplug/releases/download/v0.1.3/polyplug-lua-0.1.3.tar.gz",
   dir = "polyplug-lua-0.1.3",
}

description = {
   summary = "polyplug native (cdylib) bundle loader for LuaJIT hosts",
   detailed = [[
      Loader that lets a polyplug LuaJIT host load native cdylib plugin bundles.
      Supports hot-reload. Bundled with the prebuilt libpolyplug_native loader
      for Linux, macOS, and Windows.
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
      ["polyplug.loaders.native"] = "polyplug/loaders/native.lua",
   },
   -- Install ONLY the current platform's native (per-platform override) so
   -- the build never aborts on another platform's missing binary (which
   -- would leave zero modules installed). The .lua module always installs.
   platforms = {
      linux = { install = { lua = { ["polyplug_native"] = "_native/linux-x64/libpolyplug_native.so" } } },
      macosx = { install = { lua = { ["polyplug_native"] = "_native/macos-arm64/libpolyplug_native.dylib" } } },
      windows = { install = { lua = { ["polyplug_native"] = "_native/windows-x64/polyplug_native.dll" } } },
   },
}
