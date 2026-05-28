-- dawn_db-1.0-10.rockspec
package = "dawn_db"
version = "1.0-10"
source = {
  -- For local packing with 'luarocks pack', use the current directory.
  url = "https://github.com/winslygeorge/dawn_db_manager/archive/refs/heads/master.zip",
  dir = "dawn_db_manager-master" -- The directory name created after extracting the zip
}
description = {
  summary = "A database manager for Lua, with a native PostgreSQL binding.",
  detailed = [[
    dawn_db is a Lua library for managing database connections and operations,
    featuring an ORM, query builder, and native PostgreSQL support via LuaJIT FFI.
  ]],
  homepage = "https://github.com/winslygeorge/dawn_db_manager",
  license = "MIT"
}
dependencies = {
  -- State basic Lua compatibility. LuaJIT is usually compatible with Lua 5.1 bytecode.
  -- Do NOT list "luajit" here, as it's the interpreter, not a package to be installed by LuaRocks.
  "lua >= 5.1",
  -- Add any other LuaRocks dependencies your library truly needs (e.g., 'lfs', 'lua-cjson', 'luasocket')
}

build = {
  -- Set the build type to "cmake" since you are using CMake for your native module.

  type = "command", -- Use "command" type for custom shell commands.

    build_command = [[
      ls
      chmod +x build.sh
      sudo ./build.sh
   ]],
   -- 'build_command' contains the commands to execute during the build phase.
   -- **ALL COMMENTS REMOVED FROM THIS SECTION**

  -- Specify variables to pass to CMake.
  -- LuaRocks often provides LUAJIT_INCDIR if it's configured for LuaJIT,
  -- which should map to the `LUAJIT_INCLUDE_DIR` variable in your CMakeLists.txt.

  -- The 'targets' table specifies which CMake targets produce the installable binaries
  -- (e.g., shared libraries like your .so file).
  -- The key 'dawn_db' here must match the target name in your CMakeLists.txt
  -- (e.g., `add_library(dawn_db SHARED ...) `).
  -- LuaRocks will find the built shared library and install it to the correct Lua `lib` directory.
  targets = {
    dawn_db = {
      type = "shared" -- Indicates this target produces a shared library (.so, .dll, .dylib)
    }
  },

  install = {
    -- The 'lua' table maps Lua module names (as they would be `require`d) to their paths.
    -- Since your Makefile pre-compiles .lua files to .luac in the 'build/' directory,
    -- these paths should point to those compiled bytecode files.
    lua = {
      ["orm.config"] = "build/orm/config.lua",
      ["orm.connection_manager"] = "build/orm/connection_manager.lua",
      ["orm.DawnModelRoute"] = "build/orm/DawnModelRoute.lua",
      ["orm.init"] = "build/orm/init.lua",
      ["orm.model_route"] = "build/orm/model_route.lua",
      ["orm.model"] = "build/orm/model.lua",
      ["orm.query_builder"] = "build/orm/query_builder.lua",
      ["orm.result_mapper"] = "build/orm/result_mapper.lua",
      ["orm.schema_manager"] = "build/orm/schema_manager.lua",
      ["async_postgres"] = "build/async_postgres.lua",
      ["pg_ffi"] = "build/pg_ffi.lua",
      ["postgres"] = "build/postgres.lua",
      -- The native 'dawn_db.so' is handled by the 'targets' section above and does not
      -- need to be listed here in 'install.lua'. If you have a Lua file that serves
      -- as the main `dawn_db` module wrapper, that .luac file would be listed here.
    },
    -- The 'examples' table is for files that are installed alongside the library
    -- but are not meant to be `require`d as modules (e.g., usage examples, test scripts).
    -- These are typically installed to a documentation/examples subdirectory.
  }
}
