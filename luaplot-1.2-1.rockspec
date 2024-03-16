rockspec_format = "3.0"
package = "luaplot"
version = "1.2-1"
description = {
  license = "MIT",
  maintainer = "thewizardplusplus <thewizardplusplus@yandex.ru>",
  homepage = "https://github.com/thewizardplusplus/luaplot",
}
source = {
  url = "git+https://github.com/thewizardplusplus/luaplot.git",
  tag = "v1.2",
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
    ["maths"] = "maths.lua",
    ["maths_test"] = "maths_test.lua",
    ["iterators"] = "iterators.lua",
    ["iterators_test"] = "iterators_test.lua",
    ["iterable"] = "iterable.lua",
    ["iterable_test"] = "iterable_test.lua",
    ["plot"] = "plot.lua",
    ["plot_test"] = "plot_test.lua",
    ["plotiterator"] = "plotiterator.lua",
    ["plotiterator_test"] = "plotiterator_test.lua",
    ["plotiteratorfactory"] = "plotiteratorfactory.lua",
    ["plotiteratorfactory_test"] = "plotiteratorfactory_test.lua",
    ["oscillogram"] = "oscillogram.lua",
    ["oscillogram_test"] = "oscillogram_test.lua",
  },
  copy_directories = {
    "doc",
  },
}
