package = "brotli-ffi"
version = "0.2-2"
source = {
   url = "git://github.com/GenessyX/brotli-ffi",
   tag = "v0.2.2"
}
description = {
   summary = "Luajit ffi library for brotli compression.",
   detailed = [[
        This is luajit ffi bindings for brotli compression
        with support of streams.
   ]],
   homepage = "https://github.com/GenessyX/brotli-ffi",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        ["brotli"] = "lib/brotli/brotli.lua",
        ["brotli_bindings"] = "lib/brotli/brotli_bindings.lua"
    }
}