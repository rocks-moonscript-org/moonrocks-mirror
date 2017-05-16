package = "cwnu-drcom"
version = "0.0.1-1"
source = {
   url = "git://github.com/leetking/cwnu-drcom.lua",
}
description = {
   summary = "登录西华师范大学校园网",
   detailed = [[
       通过网页认证登录网络，仅供西华师范大学使用(http://cwnu.edu.cn)。
   ]],
   homepage = "http://github.com/leetking/cwnu-drcom.lua",
   license = "GNU GPL v3"
}
dependencies = {
   "lua >= 5.1",
   "luasocket >= 3.0rc1-2",
   "md5 >= 1.2-1",
}
build = {
   type = "builtin",
   modules = {
      drcom  = "drcom.lua",
      config = "config.lua",
   },
}
