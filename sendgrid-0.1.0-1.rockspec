package = "sendgrid"
version = "0.1.0-1"
source = {
   url = "git://github.com/meetme2meat/sendgrid"
}
description = {
   summary = "Sendgrid V3 API to send mail",
   detailed = [[
      Send email using sendgrid.
   ]],
   homepage = "https://github.com/meetme2meat/sendgrid",
   license = "MIT"
}
dependencies = {
   "lua >= 5.2, < 5.4",
   "lua-cjson >= 2.0.0",
   "ltn12",
   "luasocket >= 3.0rc1"
}
build = {
   type = "builtin",
   modules = {
      sendgrid = "sendgrid.lua"
   }
}
