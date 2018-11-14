package = "random"
version = "1.0-0"
source = {
  url = "git+https://github.com/hjpotter92/lua-random.git"
}
description = {
  homepage = "https://github.com/hjpotter92/lua-random",
  license = "MIT",
  summary = "Some random helper functions, wrapped in a package."
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    random = "random.lua"
  }
}
