package = "lua-resty-rabbitmqstomp"
version = "0.2-1"

source = {
   url = "git://github.com/qiqizjl/lua-resty-rabbitmqstomp.git",
   tag = "v0.2"
}

description = {
   homepage = "https://github.com/qiqizjl/lua-resty-rabbitmqstomp",
}


build = {
   type = "builtin",
   modules = {
      ["resty.rabbitmqstomp"] = "lib/resty/rabbitmqstomp.lua"
   }
}
