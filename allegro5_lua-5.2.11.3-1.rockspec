rockspec_format = "3.0"
package = "allegro5_lua"
version = "5.2.11.3-1"
source = {
   url = "git+https://github.com/smbape/lua-allegro5.git",
   tag = "v0.0.1"
}
description = {
   summary = "allegro5 bindings for lua",
   detailed = [[
      allegro5 bindings for luajit and lua 5.1/5.2/5.3/5.4/5.5.

      Linux/Windows users:
      I recommend you to try to install the prebuilt binary.

      If you are not using luajit
      luarocks install --server=https://github.com/smbape/luarocks-binaries/releases/download/v0.0.1 allegro5_lua

      Or to specify the target lua version with one of the following commands
      luarocks install --server=https://github.com/smbape/luarocks-binaries/releases/download/v0.0.1 allegro5_lua 5.2.11.3luajit2.1
      luarocks install --server=https://github.com/smbape/luarocks-binaries/releases/download/v0.0.1 allegro5_lua 5.2.11.3lua5.5
      luarocks install --server=https://github.com/smbape/luarocks-binaries/releases/download/v0.0.1 allegro5_lua 5.2.11.3lua5.4
      luarocks install --server=https://github.com/smbape/luarocks-binaries/releases/download/v0.0.1 allegro5_lua 5.2.11.3lua5.3
      luarocks install --server=https://github.com/smbape/luarocks-binaries/releases/download/v0.0.1 allegro5_lua 5.2.11.3lua5.2
      luarocks install --server=https://github.com/smbape/luarocks-binaries/releases/download/v0.0.1 allegro5_lua 5.2.11.3lua5.1

      Those prebuilt binaries should work on windows and many linux distributions and have been tested on:
        - Windows 11
        - Ubuntu 22.04
        - Ubuntu 24.04
        - Ubuntu 26.04
        - Debian 11
        - Debian 12
        - Debian 13
        - Fedora 43
        - Fedora 44
        - Fedora 45
        - Almalinux 8
        - Almalinux 9
        - Almalinux 10

      If the prebuilt binary does not work or you want a custom build, then I recommend you to host your own binary rocks by following the instructions at
      https://github.com/smbape/lua-allegro5/tree/v0.0.1#hosting-you-own-binary-rocks

      Otherwise, follow the instructions at https://github.com/smbape/lua-allegro5/tree/v0.0.1#prerequisites-to-source-rock-install
      before attempting to install the source rock with

      luarocks install --server=https://github.com/smbape/luarocks-binaries/releases/download/v0.0.1 allegro5_lua 5.2.11.3
   ]],
   homepage = "https://github.com/smbape/lua-allegro5",
   license = "MIT",
   issues_url = "git+https://github.com/smbape/lua-allegro5.git",
   labels = {
      "allegro5"
   }
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "cmake",
   copy_directories = {
      "docs"
   },
   variables = {
      CMAKE_BUILD_TYPE = "Release",
      CMAKE_INSTALL_PREFIX = "$(PREFIX)",
      LUA_BINDIR = "$(LUA_BINDIR)",
      LUA_DIR = "$(LUA_DIR)",
      LUA_INCDIR = "$(LUA_INCDIR)",
      LUA_INSTALL_LIBDIR = "$(LIBDIR)",
      LUA_INSTALL_LUADIR = "$(LUADIR)",
      WITH_LUA_ROCKS = "ON"
   }
}
