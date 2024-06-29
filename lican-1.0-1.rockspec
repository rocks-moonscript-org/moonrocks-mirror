package = "lican"
version = "1.0-1"
source = {
   url = "git://github.com/jigordev/lican.git"
}
description = {
   summary = "lican is a Lua library for creating and validating forms, inspired by WTForms.",
   detailed = [[
      lican is a Lua library for creating and validating forms, inspired by WTForms.
      It provides a flexible framework for defining form fields, applying filters, and validating user input.
   ]],
   license = "MIT",
   homepage = "https://github.com/jigordev/lican",
   maintainer = "J. Igor Melo <jigordev@gmail.com>",
}
dependencies = {
    "lua >= 5.1",
    "middleclass",
    "lua-checkargs",
}
build = {
   type = "builtin",
   modules = {
      ["lican"] = "src/init.lua",
      ["lican.form"] = "src/form.lua",
      ["lican.fields"] = "src/fields.lua",
      ["lican.filters"] = "src/filters.lua",
      ["lican.validators"] = "src/validators.lua",
      ["lican.utils"] = "src/utils.lua",
   }
}
