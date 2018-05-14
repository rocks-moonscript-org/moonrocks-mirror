package = "spaces"
version = "0.3-1"
source = {
   url = "git://github.com/tjizep/libspaces.git",
   tag = "v0.3"
}
description = {
   summary = "Lib(eration) spaces is a library and server for transactional graph and key value storage/persistence. ",
   detailed = "Lib(eration) spaces is a library and server for transactional graph and key value storage/persistence. ",
   homepage = "https://github.com/tjizep/libspaces",
   license = "LGPL 2.1"
}
dependencies = {}

build = {
   type = "command",
   build_command = [[
cmake -E make_directory build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release -DLUA=$(LUA) -DLUA_INCLUDE=$(LUA_INCDIR) -DLUA_LIBDIR="$(LUA_LIBDIR)" -DLUADIR="$(LUADIR)" -DLIBDIR="$(LIBDIR) -DCMAKE_INSTALL_PREFIX="$(PREFIX)"
]],
	 platforms = {
      windows = {
           build_command = [[
cmake -E make_directory build && cd build && cmake .. -DCMAKE_BUILD_TYPE=Release -DLUA=$(LUA) -DLUA_INCLUDE=$(LUA_INCDIR) -DLUA_LIBDIR="$(LUA_LIBDIR)" -DLUADIR="$(LUADIR)" -DLIBDIR="$(LIBDIR)" -DCMAKE_INSTALL_PREFIX="$(PREFIX)" && $(MAKE)
]]
      }
   },
   install_command = "cd build && $(MAKE) install"
}
