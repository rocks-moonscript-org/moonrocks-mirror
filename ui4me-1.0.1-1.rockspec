rockspec_format = "3.0"
package = "ui4me"
version = "1.0.1-1"
source = {
   url = "https://github.com/ui4me/ui4me/releases/download/v1.0.1/ui4me-lua-1.0.1.zip",
   dir = "lua",
}
description = {
   summary = "Native desktop apps from HTML and CSS: the LuaJIT FFI binding of UI4ME Core",
   detailed = [[
A pure LuaJIT FFI binding over the UI4ME C ABI 1. Needs LuaJIT 2.1 (plain Lua 5.x is not
supported) and the UI4ME native library of the same version, which this rock does not contain:
download the native SDK zip for your platform from the GitHub release v1.0.1 and set
UI4ME_NATIVE_LIB to the absolute path of lib/libui4me_core.so or lib/ui4me_core.dll, or place
the library next to the installed ui4me.lua.]],
   homepage = "https://github.com/ui4me/ui4me",
   license = "MIT",
   labels = { "gui", "desktop", "html", "css", "ffi", "luajit" },
}
supported_platforms = { "linux", "windows" }
dependencies = { "lua == 5.1" }
build = {
   type = "builtin",
   modules = { ui4me = "ui4me.lua" },
   copy_directories = { "examples" },
}
