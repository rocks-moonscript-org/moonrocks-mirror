rockspec_format = "3.0"
package = "luatypechecks"
version = "1.0.0-1"
description = {
  summary = "The library that implements various type checks in order to simulate static typing in the Lua language.",
  license = "MIT",
  maintainer = "thewizardplusplus <thewizardplusplus@yandex.ru>",
  homepage = "https://github.com/thewizardplusplus/luatypechecks",
}
source = {
  url = "git+https://github.com/thewizardplusplus/luatypechecks.git",
  tag = "v1.0.0",
}
dependencies = {
  "lua >= 5.1, < 5.5",
  "middleclass >= 4.1.1, < 5.0",
}
test_dependencies = {
  "luaunit >= 3.4, < 4.0",
}
build = {
  type = "builtin",
  modules = {
    ["checks"] = "checks.lua",
    ["checks_test"] = "checks_test.lua",
    ["test"] = "test.lua",
  },
  copy_directories = {
    "doc",
  },
}
