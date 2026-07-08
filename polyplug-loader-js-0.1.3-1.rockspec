package = "polyplug-loader-js"
version = "0.1.3-1"

source = {
   url = "https://github.com/polyplug/polyplug/releases/download/v0.1.3/polyplug-lua-0.1.3.tar.gz",
   dir = "polyplug-lua-0.1.3",
}

description = {
   summary = "polyplug JavaScript (QuickJS) bundle loader for LuaJIT hosts",
   detailed = [[
      Loader that lets a polyplug LuaJIT host load JavaScript plugin bundles
      running on QuickJS, each in its own isolated VM. Supports hot-reload.
      Bundled with the prebuilt libpolyplug_js loader for Linux, macOS, and
      Windows.
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
      ["polyplug.loaders.js"] = "polyplug/loaders/js.lua",
   },
   -- Install ONLY the current platform's native (per-platform override) so
   -- the build never aborts on another platform's missing binary (which
   -- would leave zero modules installed). The .lua module always installs.
   platforms = {
      linux = { install = { lua = { ["polyplug_js"] = "_native/linux-x64/libpolyplug_js.so" } } },
      macosx = { install = { lua = { ["polyplug_js"] = "_native/macos-arm64/libpolyplug_js.dylib" } } },
      windows = { install = { lua = { ["polyplug_js"] = "_native/windows-x64/polyplug_js.dll" } } },
   },
}
