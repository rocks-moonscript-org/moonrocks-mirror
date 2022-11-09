rockspec_format = "1.1"
package = "metaclass"
version = "0.1.0-1"
source = {
   url = "git+https://gitlab.com/ochaton/metaclass",
   tag = "0.1.0"
}
description = {
   summary = "OOP Framework for Lua",
   homepage = "https://gitlab.com/ochaton/metaclass",
   license = "WTFPL"
}
dependencies = {
   "lua ~> 5.1"
}
build = {
   type = "builtin",
   modules = {
      metaclass = "metaclass.lua",
      ["metaclass.containers.Enum"] = "metaclass/containers/Enum.lua",
      ["metaclass.containers.LinkedList"] = "metaclass/containers/LinkedList.lua",
      ["metaclass.containers.List"] = "metaclass/containers/List.lua",
      ["metaclass.containers.init"] = "metaclass/containers/init.lua"
   }
}
