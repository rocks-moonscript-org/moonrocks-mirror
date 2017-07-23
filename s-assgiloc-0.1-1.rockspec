package = "s-assgiloc"
version = "0.1-1"
source = {
   url = "https://gitlab.com/lasfter/s-assgiloc.git",
   tag = "v0.1"
}
description = {
   homepage = "https://gitlab.com/lasfter/s-assgiloc.git",
   license = "MIT/X11"
}
dependencies = {
  "lua == 5.1",
  "lua-discount",
  "etlua",
  "luafilesystem",
  "lyaml"
}
build = {
  type = "make",
  build_variables = {
     LUA="$(LUA)",
  },
  install_variables = {
     INST_BINDIR="$(BINDIR)",
     INST_LUADIR="$(LUADIR)",
     INST_PREFIX="$(PREFIX)",
  },
}
