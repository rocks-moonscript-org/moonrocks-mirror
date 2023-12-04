package = "lua-resty-shell"
version = "0.03-0"
source = {
   url = "git+https://github.com/openresty/lua-resty-shell.git"
}
description = {
   summary = "lua-resty-shell - Lua module for nonblocking system shell command executions",
   detailed = "lua-resty-shell - Lua module for nonblocking system shell command executions",
   homepage = "https://github.com/openresty/lua-resty-shell",
   license = "BSD"
}
build = {
   type = "builtin",
   modules = {
      ["resty.shell"] = "lib/resty/shell.lua"
   }
}
