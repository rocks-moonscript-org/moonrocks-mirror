package="riemoon"
version="0.0.2-1"
source = {
   url = "git://github.com/algernon/riemoon"
}
description = {
   summary = "A Riemann client library.",
   detailed = [[
            A Riemann client library built on top of riemann-c-client.
    ]],
   homepage = "http://github.com/algernon/riemoon/",
   license = "LGPL3+"
}
dependencies = {
   "lua >= 5.1",
   "busted >= 2.0.rc7-0"
}
build = {
   type = "command",
   build_command = "autoreconf -i && ./configure --prefix=$(PREFIX) --libdir=$(LIBDIR) --datadir=$(LUADIR) && make clean && make && make check",
   install_command = "make install"
}
