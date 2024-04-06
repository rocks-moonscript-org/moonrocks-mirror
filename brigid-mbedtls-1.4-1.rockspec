package = "brigid-mbedtls"
version = "1.4-1"
source = {
  url = "https://github.com/brigid-jp/brigid-mbedtls/releases/download/v1.4/brigid-mbedtls-1.4.zip";
}
description = {
  summary = "Lua bindings for Mbed TLS";
  license = "Apache or GPL";
  homepage = "https://github.com/brigid-jp/brigid-mbedtls/";
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
