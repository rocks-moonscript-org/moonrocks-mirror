package = "brigid-pcre2"
version = "1.3-1"
source = {
  url = "https://github.com/brigid-jp/brigid-pcre2/releases/download/v1.3/brigid-pcre2-1.3.tar.gz";
}
description = {
  summary = "Lua bindings for PCRE2";
  license = "BSD";
  homepage = "https://github.com/brigid-jp/brigid-pcre2/";
  maintainer = "dev@brigid.jp";
}
build = {
  type = "make";
  build_variables = {
    ROCK_CFLAGS = "$(CFLAGS)";
    ROCK_LIBFLAG = "$(LIBFLAG)";
    ROCK_LUA_INCDIR = "$(LUA_INCDIR)";
  };
  install_variables = {
    ROCK_LIBDIR = "$(LIBDIR)";
  };
}
