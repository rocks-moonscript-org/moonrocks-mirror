package = "brigid"
version = "1.9-1"
source = {
  url = "https://github.com/brigid-jp/brigid/releases/download/v1.9/brigid-1.9.tar.gz";
}
description = {
  summary = "A small but useful module";
  license = "MIT";
  homepage = "https://github.com/brigid-jp/brigid/";
  maintainer = "dev@brigid.jp";
}
build = {
  type = "command";
  build_command
    = [[env]]
    .. [[ PATH="$(LUA_BINDIR):$PATH"]]
    .. [[ CPPFLAGS="$CPPFLAGS -I$(LUA_INCDIR)"]]
    .. [[ CXXFLAGS="$CXXFLAGS -Wall -W -Wno-missing-field-initializers $(CFLAGS)"]]
    .. [[ OBJCXXFLAGS="$OBJCXXFLAGS -Wall -W -Wno-missing-field-initializers -Wno-unused-parameter $(CFLAGS)"]]
    .. [[ LUA="$(LUA)"]]
    .. [[ ./configure --prefix="$(PREFIX)" && make]];
  install_command = [[make luadir="$(LUADIR)" luaexecdir="$(LIBDIR)" install]];
  platforms = {
    windows = {
      type = "make";
      makefile = "windows.mk";
      build_variables = {
        CFLAGS = "$(CFLAGS)";
        LIBFLAG = "$(LIBFLAG)";
        LUA_INCDIR = "$(LUA_INCDIR)";
        LUA_LIBDIR = "$(LUA_LIBDIR)";
        LUALIB = "$(LUALIB)";
      };
      install_variables = {
        LIBDIR = "$(LIBDIR)";
      };
    };
  };
}
