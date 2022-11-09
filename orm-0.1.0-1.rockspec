package = "orm"
version = "0.1.0-1"
source = {
   url = "git+https://gitlab.com/ochaton/orm.git",
   tag = "0.1.0"
}
description = {
   summary = "Handy library to hang own methods to tuples",
   homepage = "https://gitlab.com/ochaton/orm",
   license = "BSD 2"
}
dependencies = {
   "lua ~> 5.1",
   "metaclass"
}
build = {
   type = "builtin",
   modules = {
      orm = "orm/init.lua",
      ["orm.Index"] = "orm/Index.lua",
      ["orm.Plan"] = "orm/Plan.lua",
      ["orm.Space"] = "orm/Space.lua",
      ["orm.Tuple"] = "orm/Tuple.lua",
      ["orm.util"] = "orm/util.lua"
   }
}
