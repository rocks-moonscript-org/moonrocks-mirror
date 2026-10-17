package = "pf"
version = "0.1-1"
source = {
   url = "git+https://github.com/mischief/luapf.git",
   tag = "v0.1",
}
description = {
   summary = "Lua bindings for the OpenBSD packet filter",
   detailed = [[
Read and control pf(4) from Lua: rules, states, tables, queues, anchors,
limiters and status. pf.dsl builds a ruleset as Lua data and loads it the
way pfctl -f does.
]],
   homepage = "https://github.com/mischief/luapf",
   license = "ISC",
}
supported_platforms = { "openbsd" }
dependencies = {
   "lua >= 5.3, < 5.5",
}

build = {
   type = "command",

   build_command = "CFLAGS='$(CFLAGS)' meson setup --reconfigure --wipe --buildtype=release -Dwerror=false -Dfuzz=false -Dlua=lua$(LUA_VERSION) -Dlua-module-directory=$(LIBDIR) -Dlua-source-directory=$(LUADIR) build-luarocks && ninja -C build-luarocks",
   install_command = "ninja -C build-luarocks -v install",
}
