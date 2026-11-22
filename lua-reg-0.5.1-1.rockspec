rockspec_format = "3.0"
package = "lua-reg"
version = "0.5.1-1"

source = {
   url = "git+https://github.com/Luca96/lua-reg.git",
   tag = "v0.5.1",
}

description = {
   summary = "A pure-Lua regular expression engine",
   detailed = [[
      Patterns are compiled to an NFA and matched in time linear in the length of the
      string: quantifiers ({n,m}, *, +, ?), sets and ranges ([a-z0-9], [^abc]), groups,
      unions (a|b) and subroutine-style backreferences (\1 .. \5). The Reg class offers
      matches, find, finder, findall and split. ':' is the escape character.
   ]],
   homepage = "https://github.com/Luca96/lua-reg",
   license = "MIT",
   labels = { "regex", "string" },
}

dependencies = {
   "lua >= 5.1, < 5.5",
   "luatable ~> 0.8",
}

test_dependencies = {
   "busted",
}

test = {
   type = "busted",
   flags = { "--exclude-tags=knownbug" },
}

build = {
   type = "builtin",
   modules = {
      luareg = "src/luareg.lua",
      ["luareg.parser"] = "src/luareg/parser.lua",
      ["luareg.nfa"] = "src/luareg/nfa.lua",
   },
}
