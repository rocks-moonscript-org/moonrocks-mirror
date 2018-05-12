package = "lua-resty-duo-mobile"
version = "0.1-0"
source = {
  url = "git://github.com/p0pr0ck5/lua-resty-duo-mobile",
  tag = "v0.1",
}
description = {
  summary = "OpenResty client for the Duo Mobile Auth API",
  homepage = "https://github.com/p0pr0ck5/lua-resty-duo-mobile",
  license = "3-clause BSD",
  maintainer = "Robert Paprocki <robert@cryptobells.com",
}
dependencies = {
  "lua >= 5.1",
  "lua-resty-http = 0.12",
}
build = {
   type = "builtin",
   modules = {
      ["resty.duo"] = "lib/resty/duo.lua",
   }
}
