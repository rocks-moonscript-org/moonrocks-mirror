package = "luacv"
version = "0.0-0"
source = {
    url = "git://github.com/0wu/luacv.git",
    tag = "master"
}
description = {
   summary = "This is our internal fork of LuaCV: http://sourceforge.net/projects/luacv/",
   detailed = [[
        This is our internal fork of LuaCV: http://sourceforge.net/projects/luacv/
   ]],
   homepage = "https://github.com/0wu/luacv",
   license = "LGPL"
}
dependencies = {
   "torch >= 7.0",
   "lua ~> 5.1"
}

--https://github.com/keplerproject/luarocks/wiki/Creating-a-Makefile-that-plays-nice-with-LuaRocks
build = {
   type = "command",
   build_command = [[
cmake -E make_directory build;
cd build;
cmake .. -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)" -DLIBDIR="$(LIBDIR)"
   ]],
   install_command = "cd build && $(MAKE) -j install"
}
