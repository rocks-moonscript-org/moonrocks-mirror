rockspec_format = "3.0"
package = "luaplot"
version = "1.0-1"
description = {
  license = "MIT",
  maintainer = "thewizardplusplus <thewizardplusplus@yandex.ru>",
  homepage = "https://github.com/thewizardplusplus/luaplot",
}
source = {
  url = "git+https://github.com/thewizardplusplus/luaplot.git",
  tag = "v1.0",
}
dependencies = {
  "lua >= 5.2, < 5.4",
  "middleclass >= 4.1.1, < 5.0",
}
test_dependencies = {
  "luaunit >= 3.3, < 4.0",
}
build = {
  type = "builtin",
  modules = {
    ["types"] = "types.lua",
    ["types_test"] = "types_test.lua",
    ["plot"] = "plot.lua",
    ["plot_test"] = "plot_test.lua",
  },
  copy_directories = {
    "doc",
  },
}
