package = "wax"
version = "latest-1"

source = {
  url = "git://github.com/luawax/wax",
  tag = "latest"
}

description = {
  homepage = "https://github.com/luawax/wax",
  license = "GPL-3"
}

dependencies = {
  "lua >= 5.1, < 5.5",
}

build = {
  type = "builtin",
  modules = {
    ["wax.path"] = { "src/c/lib/defs.c", "src/c/path.c" },
    ["wax.user"] = { "src/c/lib/defs.c", "src/c/user.c" },

    ["wax.template"] = "src/template/init.lua"
  }
}
