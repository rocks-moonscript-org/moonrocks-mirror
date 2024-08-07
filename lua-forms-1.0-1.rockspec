package = "lua-forms"
version = "1.0-1"
source = {
   url = "git://github.com/jigordev/lua-forms.git"
}
description = {
   summary = "lua-forms is a Lua library for creating and validating forms, inspired by WTForms.",
   detailed = [[
      lua-forms is a Lua library for creating and validating forms, inspired by WTForms.
      It provides a flexible framework for defining form fields, applying filters, and validating user input.
   ]],
   license = "MIT",
   homepage = "https://github.com/jigordev/lua-forms",
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
      ["lforms"] = "src/init.lua",
      ["lforms.form"] = "src/form.lua",
      ["lforms.fields"] = "src/fields.lua",
      ["lforms.filters"] = "src/filters.lua",
      ["lforms.validators"] = "src/validators.lua",
      ["lforms.utils"] = "src/utils.lua",
      ["lforms.types"] = "src/types.lua",
   }
}
