rockspec_format = "3.0"
package = "imsg"
version = "0.3-1"
source = {
   url = "git+https://github.com/mischief/libimsg.git",
   tag = "v0.3"
}
description = {
   summary = "Lua binding to OpenBSD imsg",
   detailed = "Vendored copy of and Lua binding to OpenBSD's imsg IPC messaging library.",
   homepage = "https://github.com/mischief/libimsg",
   license = "ISC",
}
dependencies = {
   "lua >= 5.1, < 5.6",
}

test_dependencies = {
   "luaposix",
}

build = {
   type = "command",

   -- by default, statically link vendored libimsg
   build_command = "CFLAGS='$(CFLAGS)' meson setup --reconfigure --wipe -Dlua=lua$(LUA_VERSION) -Dlua-only=true -Dlua-static=true -Dlua-module-directory=$(LIBDIR) build",
   install_command = "ninja -C build -v install",

   -- on OpenBSD, link libutil dynamically when it has all of imsg
   platforms = {
      openbsd = {
         build_command = "CFLAGS='$(CFLAGS)' meson setup --reconfigure --wipe -Dlua=lua$(LUA_VERSION) -Dlua-only=true -Dlua-static=false -Dlua-module-directory=$(LIBDIR) build",
      }
   }
}

