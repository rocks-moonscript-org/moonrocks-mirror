package = "metaty"
version = "0.1-0"
source = {
  url = "git+ssh://git@github.com/civboot/metaty.git"
}
description = {
  summary = " simple but effective Lua type system using metatables",
  homepage = "https://github.com/civboot/metaty",
  license = "UNLICENSE"
}
dependencies = {
  "lua ~> 5.3",
}
build = {
  type = "builtin",
  modules = {
    metaty = "metaty.lua",
  },
  copy_directories = {
    "tests"
  }
}
