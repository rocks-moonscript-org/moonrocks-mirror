package="Lrexlib-POSIX"
version="2.2.2-2"
source = {
   url = "http://luaforge.net/frs/download.php/3018/lrexlib-2.2.2.zip",
   md5 = "e6b18dbad4cf2942ad10535c629b8ae9"
}
description = {
   summary = "Lua binding of the POSIX regular expression library.",
   detailed = [[
      Lrexlib is a regular expression library for Lua 5.1, which
      provides bindings for POSIX and PCRE regular expression libraries.
      This rock provides the POSIX bindings.
   ]],
   homepage = "http://lrexlib.luaforge.net/",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "make",
   install_pass = false,
   build_target = "build_posix",
   variables = {
      INC = "-I$(LUA_INCDIR)",
      LD = "$(LD)",
      LDFLAGS = "$(LIBFLAG)",
      MYCFLAGS = "-W -Wall $(CFLAGS)"
   },
   install = {
      lib = {
         "src/rex_posix.so"
      }
   }
}

