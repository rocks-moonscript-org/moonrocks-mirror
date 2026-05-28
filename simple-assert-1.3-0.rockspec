package = "simple-assert"
rockspec_format = "3.0"
version = "1.3-0"
source = {
  url = "git+https://github.com/ChillerDragon/simple-assert.git",
  branch = "master"
}
description = {
  summary = "simple assert for unit tests",
  detailed = "",
  license = "Zlib",
  homepage = "https://github.com/ChillerDragon/simple-assert.git",
  issues_url = "https://github.com/ChillerDragon/simple-assert/issues",
  maintainer = "ChillerDragon <chillerdragon@gmail.com>",
  labels = { "assert", "assert_eq", "unit test", "test" }
}
dependencies = {
  "lua >= 5.1, <= 5.5"
}
build = {
  type = "builtin",
  modules = {
    ["simple.assert"] = "src/simple_assert.lua"
  }
}
