package = "lua-aho-corasick"
version = "1.0.1-6"
source = {
   url = "git+https://github.com/hualvwang/lua-aho-corasick/",
}
description = {
   detailed = [[
C++ and Lua Implementation of the Aho-Corasick (AC) string matching algorithm
(http://dl.acm.org/citation.cfm?id=360855).]],
   homepage = "https://github.com/cloudflare/lua-aho-corasick/",
   license = "BSD-3-Clause license"
}
dependencies = {
	"lua >= 5.1"
}

build = {
   type = "builtin",
   modules = {
      load_ac = "load_ac.lua",
      ahocorasick ={
         sources = {"ac_fast.cxx", "ac_slow.cxx", "ac_lua.cxx"},
      },
      libac ={
         sources = {"ac_fast.cxx", "ac_slow.cxx", "ac.cxx"},
      }
   }
}
