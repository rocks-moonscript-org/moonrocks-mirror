package = "simpleoop"
version = "0.1.0-1"
rockspec_format = "3.0"

source = {
   url = "git+https://github.com/olan392/simpleoop.git"
}

description = {
   homepage = "",
   license = "MIT"
}

dependencies = {}

build = {
   type = "builtin",
   modules = {
      ["classes.class"] = "classes/class.lua",
      ["classes.extend"] = "classes/extend.lua",
      ["classes.new"] = "classes/new.lua"
   }
}
