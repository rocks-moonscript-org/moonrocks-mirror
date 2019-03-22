package = "plug"
version = "0.1.1-0"
source = {
   url = "git+https://github.com/mwplug/plug.git"
}
description = {
   summary = "Plug is a powerful, simple to use Plugin framework for Mini World: Block Art.",
   homepage = "https://github.com/mwplug/plug",
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      ["plug.moon"] = "src/plug/moon/init.lua",
      ["plug.core"] = "src/plug/core/init.lua",
      ["plug.util"] = "src/plug/util/init.lua",
      ["plug.model"] = "src/plug/model/init.lua"
   }
}
