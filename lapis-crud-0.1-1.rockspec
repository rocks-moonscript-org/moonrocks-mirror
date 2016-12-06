package = "lapis-crud"
version = "0.1-1"

source = {
  url = "https://github.com/honewatson/lapis-crud.git"
}

description = {
  summary = "A base crud class for creating basic crud routes",
  homepage = "https://github.com/honewatson/lapis-crud",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1",
  "lapis",
}

build = {
  type = "builtin",
  modules = {
    ["lapiscrud"] = "lapiscrud/crud.lua",
  }
}

