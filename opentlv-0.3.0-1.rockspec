-- SPDX-License-Identifier: MIT
-- Copyright (c) 2026 Marek Cingel

package = "opentlv"
version = "0.3.0-1"

source = {
   url = "git+https://github.com/OpenTLV/opentlv-lua.git",
   tag = "v0.3.0"
}

description = {
   summary = "Lua bindings to the OpenTLV C library",
   detailed = [[
      Binds the OpenTLV C Reader, Writer, Tree Writer, Element, Tag and preorder
      tree traversal directly to Lua 5.1 through 5.4 and LuaJIT. Experimental;
      see https://github.com/OpenTLV/opentlv-lua#readme.
   ]],
   homepage = "https://github.com/OpenTLV/opentlv-lua",
   license = "MIT"
}

dependencies = {
   "lua >= 5.1"
}

-- Run `luarocks make` from the standalone repository root. Keep the command
-- backend and the native/pure-Lua installation contract of the original rock.
build = {
   type = "command",
   -- Only LUA_INCLUDE_DIR is passed: CMakeLists.txt only requires (and
   -- only links) a Lua library on Windows, resolving lua_*/luaL_* symbols
   -- at module-load time everywhere else instead (see its own comments for
   -- why), and locates that Windows library itself from LUA_INCLUDE_DIR's
   -- sibling "lib"/"bin" directory rather than needing a second variable
   -- here. LuaRocks' "command" build type has no substitutable variable
   -- for the Lua library's directory or exact file (LUA_LIBDIR,
   -- LUA_LIBDIR_FILE and LUALIB, which its "make"/"cmake" build types get
   -- internally, are not exposed to build_command/install_command; using
   -- any of them here is a silent no-op, warned as "unmatched variable"
   -- and substituted as empty), so this does not attempt to pass one.
   -- The development rock declares no release; scripts/rockspec.py sets the
   -- tag in a versioned copy, whose LuaRocks source has no Git metadata.
   build_command = 'cmake -S . -B build/luarocks -DCMAKE_BUILD_TYPE=Release ' ..
      '-DOPENTLV_BUILD_LUA_TESTS=OFF "-DLUA_INCLUDE_DIR=$(LUA_INCDIR)" ' ..
      '"-DOPENTLV_LUA_RELEASE_TAG=v0.3.0" && ' ..
      'cmake --build build/luarocks --target opentlv_lua --config Release',
   -- Installs both halves of the native/pure split (see README.md):
   -- opentlv._core (the compiled module) and lua/opentlv/init.lua, the
   -- one-line pure-Lua file require("opentlv") actually resolves to.
   -- rock-doc holds LICENSE-Core; LuaRocks then adds LICENSE and the root
   -- Markdown files to the same documentation directory.
   install_command = 'cmake -E make_directory "$(LIBDIR)/opentlv" && ' ..
      'cmake -E copy "build/luarocks/opentlv/_core.$(LIB_EXTENSION)" "$(LIBDIR)/opentlv/_core.$(LIB_EXTENSION)" && ' ..
      'cmake -E make_directory "$(LUADIR)/opentlv" && ' ..
      'cmake -E copy lua/opentlv/init.lua "$(LUADIR)/opentlv/init.lua" && ' ..
      'cmake -E copy build/luarocks/lua-version.json "$(PREFIX)/lua-version.json" && ' ..
      'cmake -E copy_directory build/luarocks/rock-doc "$(PREFIX)/doc"'
}
