package = "linenoise-luv"
version = "0.1.4-1"

source = {
   url = "git+https://github.com/forkfork/linenoise-luv.git",
   tag = "v0.1.4",
}

description = {
   summary = "Lua bindings for linenoise with event-loop friendly editing",
   detailed = [[
      linenoise-luv is a Lua C module wrapping linenoise, including its
      blocking API and multiplexed edit API for use with event loops such as luv.
   ]],
   homepage = "https://github.com/forkfork/linenoise-luv",
   license = "MIT AND BSD-2-Clause",
}

dependencies = {
   "lua >= 5.1",
}

build = {
   type = "builtin",
   modules = {
      ["linenoise-luv"] = "linenoise-luv.lua",
      linenoise_luv = {
         sources = {
            "linenoise.c",
            "deps/linenoise.c",
         },
         incdirs = {
            "deps",
         },
      },
   },
}
