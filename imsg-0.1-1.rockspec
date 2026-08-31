package = "imsg"
version = "0.1-1"
source = {
   url = "git+https://github.com/mischief/libimsg.git",
   tag = "v0.1"
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

build = {
   type = "command",

   -- by default, statically link vendored libimsg
   build_command = "CFLAGS='$(CFLAGS)' meson setup --reconfigure --wipe -Dlua=lua$(LUA_VERSION) -Dlua-only=true -Dlua-static=true -Dlua-module-directory=$(LIBDIR) build",
   install_command = "ninja -C build -v install",

   -- link libutil dynamically on OpenBSD
   platforms = {
      openbsd = {
         build_command = "CFLAGS='$(CFLAGS)' meson setup --reconfigure --wipe -Dlua=lua$(LUA_VERSION) -Dlua-only=true -Dlua-static=false -Dlua-module-directory=$(LIBDIR) build",
      }
   }
}

