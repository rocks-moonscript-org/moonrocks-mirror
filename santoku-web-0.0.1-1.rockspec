package = "santoku-web"
version = "0.0.1-1"
rockspec_format = "3.0"

source = {
  url = "git+ssh://git@github.com/broma0/lua-santoku-web.git"
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
  build_target = "shared",
  install_target = "install",
  build_variables = {
    CFLAGS = "$(CFLAGS)",
    LIBFLAG = "$(LIBFLAG)",
  },
  install_variables  =  {
    INST_LIBDIR = "$(LIBDIR)",
  },
}
