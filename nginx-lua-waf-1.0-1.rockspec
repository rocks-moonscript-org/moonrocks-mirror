package = "nginx-lua-waf"
version = "1.0-1"
source = {
   url = "git://github.com/loveshell/ngx_lua_waf.git",
   branch = "master"
}
description = {
   homepage = "https://github.com/loveshell/ngx_lua_waf",
   maintainer = "youxing<1097900172@qq.com>",
   license = "MIT"
}
dependencies = {
	"lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
       ["waf.waf"] = "waf.lua",
       ["waf.config"] = "config.lua",
       ["waf.init"] = "init.lua",
   },
   copy_directories = { "wafconf"}
}
