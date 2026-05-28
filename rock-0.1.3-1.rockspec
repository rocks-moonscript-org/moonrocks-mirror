package = "rock"
version = "0.1.3-1"
source = {
   url = "git+https://github.com/lvitals/rock.git",
   tag = "v0.1.3"
}
description = {
   summary = "Lua environment and package manager",
   detailed = [[
      Rock is a tool to manage Lua environments and project dependencies,
      providing a seamless way to install different Lua versions and 
      manage per-project packages.
   ]],
   homepage = "https://github.com/lvitals/rock",
   license = "MIT"
}
dependencies = {
   "lua >= 5.4"
}
build = {
   type = "command",
   build_command = "mkdir -p bin && $(CC) $(CFLAGS) -I$(LUA_INCDIR) src/main.c -o bin/rock -L$(LUA_INCDIR)/../lib -llua -lm -ldl",
   install = {
      bin = {
         ["rock-bin"] = "bin/rock",
         ["rock"] = "bin/rock"
      },
      lua = {
         ["lua.rock.init"] = "lua/rock/init.lua",
         ["lua.rock.project"] = "lua/rock/project.lua",
         ["lua.rock.remote"] = "lua/rock/remote.lua",
         ["lua.rock.utils"] = "lua/rock/utils.lua",
         ["lua.rock.vendor.dkjson"] = "lua/rock/vendor/dkjson.lua",
         ["lua.rock.vendor.toml"] = "lua/rock/vendor/toml.lua",
      }
   }
}
