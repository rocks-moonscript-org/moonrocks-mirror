package = "polyplug"
version = "0.1.3-1"

source = {
   url = "https://github.com/polyplug/polyplug/releases/download/v0.1.3/polyplug-lua-0.1.3.tar.gz",
   dir = "polyplug-lua-0.1.3",
}

description = {
   summary = "polyplug host runtime library for LuaJIT",
   detailed = [[
      LuaJIT FFI host library for polyplug: load plugin bundles at runtime and
      call guest contracts through the frozen C ABI. Includes the Runtime class,
      the native-library resolver, and reload-phase definitions. Bundled with
      the prebuilt libpolyplug core runtime for Linux, macOS, and Windows.
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
      ["polyplug"] = "polyplug.lua",
      ["polyplug.native"] = "polyplug/native.lua",
      ["polyplug.runtime"] = "polyplug/runtime.lua",
      ["polyplug.reload_phase"] = "polyplug/reload_phase.lua",
   },
   -- Install ONLY the current platform's native (per-platform override) so the
   -- build never aborts on another platform's missing binary — an all-platforms
   -- install list aborts the whole build when one file is absent, leaving zero
   -- modules installed. The .lua modules above always install regardless.
   platforms = {
      linux = { install = { lua = { ["polyplug_core"] = "_native/linux-x64/libpolyplug.so" } } },
      macosx = { install = { lua = { ["polyplug_core"] = "_native/macos-arm64/libpolyplug.dylib" } } },
      windows = { install = { lua = { ["polyplug_core"] = "_native/windows-x64/polyplug.dll" } } },
   },
}
