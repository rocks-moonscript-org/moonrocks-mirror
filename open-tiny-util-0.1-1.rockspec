package = "open-tiny-util"
version = "0.1-1"
source = {
   url = "git+https://github.com/yfge/open-tiny-util.git"
}
description = {
   summary = "the utils of lua ",
   detailed = "",
   homepage = "https://github.com/yfge/open-tiny-util",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      ["tiny.util.array"] = "lib/tiny/util/array.lua",
      ["tiny.util.uuid"] = "lib/tiny/util/uuid.lua"
   }
}
