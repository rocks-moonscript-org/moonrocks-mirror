package = "zzlib"
version = "1.0-1"
source = {
   url = "https://codeberg.org/zerkman/zzlib/archive/v1.0.tar.gz",
}
description = {
   summary = "This is a pure Lua implementation of a depacker for the zlib DEFLATE(RFC1951)/GZIP(RFC1952) file format",
   detailed = [[zzlib also allows the decoding of zlib-compressed data (RFC1950). Also featured is basic support for extracting files from DEFLATE-compressed ZIP archives (no support for encryption).

The implementation is pretty fast. It makes use of the built-in Lua bitwise operators when available (Lua ≥ 5.3). Otherwise it uses the built-in bit32 (PUC-Rio Lua) or bit (LuaJIT) libraries. Typical run times to depack lua-5.3.3.tar.gz on a single Core i7-6600U are 0.87s with Lua ≤ 5.2, 0.50s with Lua 5.3, and 0.17s with LuaJIT 2.1.0.]],
   homepage = "https://codeberg.org/zerkman/zzlib",
   license = "WTFPL"
}
dependencies = { 'luabitop' }
build = {
   type = "builtin",
   patches = {
      ["inflate-bit32.diff"] = [[
--- old/inflate-bit32.lua
+++ new/inflate-bit32.lua
@@ -11,7 +11,7 @@
 
 local inflate = {}
 
-local bit = bit32 or bit
+local bit = bit32 or bit or require'bit'
 
 inflate.band = bit.band
 
]]
   },
   modules = {
      ["inflate-bit32"] = "inflate-bit32.lua",
      ["inflate-bwo"] = "inflate-bwo.lua",
      ["zzlib"] = "zzlib.lua",
   }
}
