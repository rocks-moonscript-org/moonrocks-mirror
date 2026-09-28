rockspec_format = "3.0"
package = "shen"
version = "0.11.0-1"

source = {
   url = "git+https://github.com/pyrex41/shen-lua.git",
   tag = "v0.11.0",
}

description = {
   summary = "A speed-focused LuaJIT port of the Shen language (kernel 42)",
   detailed = [[
shen-lua runs the Shen language on LuaJIT 2.1 by compiling KLambda to Lua
source. Embed with `local shen = require("shen")` (boot/eval/call/fn plus
list/symbol marshaling), or use the `shen` launcher for a REPL, running
.shen files, and -e one-liners. Requires LuaJIT (Lua 5.1 semantics + FFI);
the Shen 42 KLambda sources and standard library are bundled and cached
after first boot.

0.11.0 adds structural lua.map-* maps, stack-safe recursive list builders,
faster curried calls and do forms, native kernel optimizations, and Nix
packaging. It also fixes numeric, evaluation-order, and Prolog edge cases.
]],
   homepage = "https://github.com/pyrex41/shen-lua",
   license = "BSD-3-Clause (Shen kernel: BSD)",
   labels = { "shen", "language", "compiler", "luajit" },
}

dependencies = {
   "lua == 5.1",
}

build = {
   type = "builtin",
   modules = {
      shen             = "shen.lua",
      boot             = "boot.lua",
      prims            = "prims.lua",
      runtime          = "runtime.lua",
      compiler         = "compiler.lua",
      prolog_engine    = "prolog_engine.lua",
      prolog_compile   = "prolog_compile.lua",
      typecheck_native = "typecheck_native.lua",
      lua_interop      = "lua_interop.lua",
      repl             = "repl.lua",
   },
   install = {
      bin = { shen = "bin/shen" },
   },
   -- klambda stays in the rock directory; lib deploys under lib/lua/5.1.
   copy_directories = { "klambda", "lib" },
}
