package = "zzlib"
version = "1.0-2"
source = {
   url = "https://github.com/zerkman/zzlib",
   tag = "v1.0"
}
description = {
   summary = "zlib-compressed file depacking library in Lua",
   detailed = [[
      This is a pure Lua implementation of a depacker for the zlib DEFLATE(RFC1951)/GZIP(RFC1952) file format. zzlib also allows the decoding of zlib-compressed data (RFC1950). Also featured is basic support for extracting files from DEFLATE-compressed ZIP archives (no support for encryption).

      The implementation is pretty fast. It makes use of the built-in bit32 (PUC-Rio Lua) or bit (LuaJIT) libraries for bitwise operations. Typical run times to depack lua-5.3.3.tar.gz on a single Core i7-6600U are 0.87s with Lua ≤ 5.2, 0.50s with Lua 5.3, and 0.17s with LuaJIT 2.1.0.
   ]],
   labels = { "compression" },
   homepage = "http://...", -- We don't have one yet
   license = "WTFPL" -- or whatever you like
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      zzlib = { "inflate-bit32.lua", "inflate-bwo.lua", "zzlib.lua" }
   },
   copy_directories = { "README.md" }
}
