package = "santoku-web"
version = "0.0.16-1"
rockspec_format = "3.0"

source = {
  url = "git+ssh://git@github.com:broma0/lua-santoku-web.git",
  tag = "0.0.16-1"
}

description = {
  homepage = "https://github.com/broma0/lua-santoku-web",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1"
}

build = {
  type = "make",
  install_target = "luarocks-install",
  build_variables = {
    CFLAGS = "$(CFLAGS)",
    LIBFLAG = "$(LIBFLAG)",
  },
  install_variables  =  {
    INST_LIBDIR = "$(LIBDIR)",
  },
}
