rockspec_format = "3.0"
package = "titan"
version = "0.6.1-1"
source = {
   url = "git+https://github.com/mascarenhas/titan"
}
description = {
   summary = "The Titan language compiler and standard library",
   detailed = [[
      The Titan language compiler and standard library.
      Titan is a statically-typed application language
      designed to be familiar to Lua programmers and to
      seamlessly interoperate with Lua, sharing the Lua
      GC while compiling to binary modules and standalone
      executables.
   ]],
   homepage = "https://titan-lang.dev",
   issues_url = "https://github.com/titan-lang/titan/issues",
   labels = { "compiler", "lua", "language", "titan" },
   license = "MIT"
}
dependencies = {
   "lua ~> 5.5",
   "lpeglabel >= 1.6.2",
   "inspect >= 3.1.0",
   "argparse >= 0.7.0",
   "luafilesystem >= 1.9.0",
   "luv >= 1.52.1"
}
test_dependencies = {
   "busted >= 2.0",
   "cluacov >= 0.1"
}
test = {
   type = "command",
   command = "bash spec/support/run_rock_tests.sh",
   flags = { "--prefix=$(LUA_DIR)", "--make=$(MAKE)" }
}
hooks = {
   post_install = '"$(LUA)" "$(PREFIX)/installer/titan_install.lua" publish "$(PREFIX)" "$(SCRIPTS_DIR)/.." "$(LUA_DIR)" "$(LUA_BINDIR)/luarocks"',
   platforms = {
      windows = {
         post_install = '"$(LUA)" "$(PREFIX)/installer/titan_install.lua" publish "$(PREFIX)" "$(SCRIPTS_DIR)/.." "$(LUA_DIR)" "$(LUA_BINDIR)/luarocks.exe"'
      }
   }
}
build = {
   type = "make",
   platforms = {
      windows = {
         makefile = "Makefile.win"
      }
   },
   -- Build the runtime and stdlib with the compiler in this source rock.
   -- The install pass retains the native SDK in the private rock directory.
   -- LuaRocks deploys the compiler files and the `titan` support module
   -- (lib/lua/5.5); the hook publishes the SDK.
   variables = {
      PREFIX = "$(LUA_DIR)",
      ROCKS_TREE = "$(SCRIPTS_DIR)/..",
      AR = "$(AR)",
      RANLIB = "$(RANLIB)",
      ROCK_LUA = "$(LUA)",
      ROCK_LUA_INCDIR = "$(LUA_INCDIR)",
      ROCK_CFLAGS = "$(CFLAGS)",
      ROCK_LD = "$(LD)",
      ROCK_LIBFLAG = "$(LIBFLAG)"
   },
   install_variables = {
      INST_PREFIX = "$(PREFIX)",
      INST_BINDIR = "$(BINDIR)",
      INST_LUADIR = "$(LUADIR)",
      INST_LIBDIR = "$(LIBDIR)",
      INST_CONFDIR = "$(CONFDIR)"
   },
   copy_directories = {
      "doc",
      "LICENSES"
   }
}
