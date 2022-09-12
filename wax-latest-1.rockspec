package = "wax"
version = "latest-1"

source = {
  url = "git://github.com/luawax/wax",
  tag = "latest"
}

description = {
  homepage = "https://codeberg.org/wax/wax",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1, < 5.5",
}

build = {
  type = "builtin",
  modules = {
    ["wax.path"] = { "src/c/lib/defs.c", "src/c/path.c" },
    ["wax.user"] = { "src/c/lib/defs.c", "src/c/user.c" },

    --["wax.getopt"] = "src/template/init.lua",
    ["wax"]          = "src/wax.lua",
    ["wax.arg"]      = "src/arg.lua",
    ["wax.template"] = "src/template/init.lua"
  }
}
