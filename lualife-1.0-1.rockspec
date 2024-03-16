rockspec_format = "3.0"
package = "lualife"
version = "1.0-1"
description = {
  license = "MIT",
  maintainer = "thewizardplusplus <thewizardplusplus@yandex.ru>",
  homepage = "https://github.com/thewizardplusplus/lualife",
}
source = {
  url = "git+https://github.com/thewizardplusplus/lualife.git",
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
    ["life"] = "life.lua",
    ["life_test"] = "life_test.lua",
    ["models.size"] = "models/size.lua",
    ["models.size_test"] = "models/size_test.lua",
    ["models.point"] = "models/point.lua",
    ["models.point_test"] = "models/point_test.lua",
    ["models.field"] = "models/field.lua",
    ["models.field_test"] = "models/field_test.lua",
  },
  copy_directories = {
    "doc",
  },
}
