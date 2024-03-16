rockspec_format = "3.0"
package = "biohazardcore"
version = "1.2-1"
description = {
  license = "MIT",
  maintainer = "thewizardplusplus <thewizardplusplus@yandex.ru>",
  homepage = "https://github.com/thewizardplusplus/biohazardcore",
}
source = {
  url = "git+https://github.com/thewizardplusplus/biohazardcore.git",
  tag = "v1.2",
}
dependencies = {
  "lua >= 5.2, < 5.4",
  "middleclass >= 4.1.1, < 5.0",
  "lualife >= 1.5.4, < 2.0",
}
test_dependencies = {
  "luaunit >= 3.3, < 4.0",
}
build = {
  type = "builtin",
  modules = {
    ["factory"] = "factory.lua",
    ["factory_test"] = "factory_test.lua",
    ["game"] = "game.lua",
    ["game_test"] = "game_test.lua",
    ["classifiedgame"] = "classifiedgame.lua",
    ["classifiedgame_test"] = "classifiedgame_test.lua",
    ["models.fieldsettings"] = "models/fieldsettings.lua",
    ["models.fieldsettings_test"] = "models/fieldsettings_test.lua",
    ["models.gamesettings"] = "models/gamesettings.lua",
    ["models.gamesettings_test"] = "models/gamesettings_test.lua",
    ["models.cellclassification"] = "models/cellclassification.lua",
    ["models.cellclassification_test"] = "models/cellclassification_test.lua",
  },
  copy_directories = {
    "doc",
  },
}
