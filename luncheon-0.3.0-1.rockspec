package = "luncheon"
version = "0.3.0-1"
source = {
   url = "git://github.com/cosock/luncheon",
   tag = "v0.3.0-1"
}
description = {
   homepage = "https://github.com/cosock/luncheon",
   license = "MIT"
}
dependencies = {
  "net-url >= 0.9",
  "logface >= 0.0.2"
}
build = {
   type = "builtin",
   modules = {
      luncheon = "luncheon/init.lua",
      ["luncheon.headers"] = "luncheon/headers.lua",
      ["luncheon.request"] = "luncheon/request.lua",
      ["luncheon.response"] = "luncheon/response.lua",
      ["luncheon.http_message"] = "luncheon/http_message.lua",
      ["luncheon.status"] = "luncheon/status.lua",
      ["luncheon.utils"] = "luncheon/utils.lua",
   }
}
