package = "luajls-lfs"
version = "0.2-1"
source = {
   url = "git+https://github.com/javalikescript/luajls.git",
   tag = "0.2",
}
description = {
   summary = "luajls with dependencies luafilesystem and luasocket",
   detailed = [[
      luajls aims to be a standard library for stand-alone Lua applications   
      The library provides an abstract interface to the underlying operating system, such as file system and network access.
      The jls Lua library is composed of a set of jls Lua modules. The jls Lua library also provides interface for general purpose libraries such as JSON, ZIP, SSL. The main targeted OSes are Linux and Windows.
      Prerequisites on Linux:
      sudo apt install luarocks lua5.3 lua5.3-dev libz-dev
   ]],
   homepage = "https://github.com/javalikescript/luajls",
   license = "MIT",
   --labels = { "event", "linux", "windows", "filesystem", "http", "compression", "json" },
}
dependencies = {
   "lua >= 5.3, < 5.4",
   "luafilesystem",
   "luasocket",
   --"openssl",
   "lua-cjson", -- cjson replaces dkjson
   "lua-zlib",
   "luaserial",
   --"lua-webview",
   "luajls",
}
build = {
   type = "builtin",
   modules = {
      --["jls.io.fs-lfs"] = "jls/io/fs-lfs.lua",
      --["jls.lang.sys-socket"] = "jls/lang/sys-socket.lua",
      --["jls.net-socket"] = "jls/net-socket.lua",
   },
}
