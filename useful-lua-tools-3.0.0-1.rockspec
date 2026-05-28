rockspec_format = "3.0"
package = "useful-lua-tools"
version = "3.0.0-1"

source = {
   url = "git+https://github.com/somerandomgamer-srg/Useful-Lua-Tools.git",
   tag = "v3.0.0"
}

description = {
   summary = "A comprehensive single-file Lua toolkit with 238 utility functions across 20 libraries.",
   detailed = [[
      Useful Lua Tools (ULT) is a comprehensive, single-file Lua toolkit
      that extends Lua's standard library with over 200 utility functions
      and variables across 20 specialized libraries including math, string,
      table, cryptography, bignum, datetime, json, file, http, system,
      color, binary, random, stack, queue, remote, input, terminal,
      validate, and more. Pure Lua with no external dependencies.
   ]],
   homepage = "https://github.com/somerandomgamer-srg/Useful-Lua-Tools",
   license = "MIT",
   labels = { "utility", "toolkit", "library", "tools" }
}

dependencies = {
   "lua >= 5.3"
}

build = {
   type = "builtin",
   modules = {
      ["Useful Lua Tools"] = "Useful Lua Tools.lua"
   },
   copy_directories = { "docs" }
}
