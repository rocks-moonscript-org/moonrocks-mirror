package = "cwnu-drcom"
version = "3.2-0"
source = {
   url = "git://github.com/leetking/cwnu-drcom.lua",
   dir = "cwnu-drcom.lua",
   tag = "v3.2",
}
description = {
   summary = "登录西华师范大学校园网",
   detailed = [[
       通过网页认证登录网络，仅供西华师范大学使用(http://cwnu.edu.cn)。
       v3.2 新版本登录
   ]],
   homepage = "http://github.com/leetking/cwnu-drcom.lua",
   maintainer = "leetking <li_Tking@163.com>",
   license = "GNU GPL v3",
}
dependencies = {
   "lua >= 5.1",
   "luasocket >= 3.0rc1-2",
   --"md5 >= 1.2-1",
}
build = {
   type = "builtin",
   modules = {
       ["cwnu-drcom.core"] = "src/core.lua",
       -- TODO 如何让config模块不导出
       ["cwnu-drcom.config"] = "src/config.lua",
   },
   install = {
       bin = {
           drcom  = "drcom.lua",
       },
   },
}
