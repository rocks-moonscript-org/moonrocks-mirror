package = "polyplug-loader-dotnet"
version = "0.1.3-1"

source = {
   url = "https://github.com/polyplug/polyplug/releases/download/v0.1.3/polyplug-lua-0.1.3.tar.gz",
   dir = "polyplug-lua-0.1.3",
}

description = {
   summary = "polyplug .NET/C# bundle loader for LuaJIT hosts",
   detailed = [[
      Loader that lets a polyplug LuaJIT host load .NET/C# plugin bundles.
      Bundled with the prebuilt libpolyplug_dotnet loader for Linux, macOS,
      and Windows.
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
      ["polyplug.loaders.dotnet"] = "polyplug/loaders/dotnet.lua",
   },
   -- Install ONLY the current platform's native (per-platform override) so
   -- the build never aborts on another platform's missing binary (which
   -- would leave zero modules installed). The .lua module always installs.
   platforms = {
      linux = { install = { lua = { ["polyplug_dotnet"] = "_native/linux-x64/libpolyplug_dotnet.so" } } },
      macosx = { install = { lua = { ["polyplug_dotnet"] = "_native/macos-arm64/libpolyplug_dotnet.dylib" } } },
      windows = { install = { lua = { ["polyplug_dotnet"] = "_native/windows-x64/polyplug_dotnet.dll" } } },
   },
}
