package = "wimbly-lib"
version = "1.0-3"

source = {
   url = "git://github.com/cdrubin/wimbly-lib",
   tag = "1.0-3"
}

description = {
  summary = "Convenience code from the wimbly project.",
  detailed = "Convenience code from the wimbly project.",
  homepage = "http://github.com/cdrubin/wimbly-lib",
  license = "MIT"
}
  
dependencies = {
  "lua >= 5.1, < 5.4",
}
  
build = {
  type = "none"
}

build = {
  type = "builtin",
  modules = {
    ["wimbly-lib.util"] = "wimbly-lib/util.lua",
    ["wimbly-lib.wimbly"] = "wimbly-lib/wimbly.lua"
  }
}
