package = "luncheon"
version = "0.0.0-11"
source = {
   url = "git://github.com/cosock/luncheon",
   tag = "v0.0.0-11"
}
description = {
   homepage = "https://github.com/cosock/luncheon",
   license = "MIT"
}
dependencies = {
   "net-url >= 0.9",
}
build = {
   type = "builtin",
   modules = {
      luncheon = "luncheon/init.lua",
      ["luncheon.headers"] = "luncheon/headers.lua",
      ["luncheon.request"] = "luncheon/request.lua",
      ["luncheon.response"] = "luncheon/response.lua",
      ["luncheon.status"] = "luncheon/status.lua",
      ["luncheon.utils"] = "luncheon/utils.lua",
   }
}
