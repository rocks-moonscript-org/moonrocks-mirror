package = "lua-resty-motan"
version = "0.1.7-1"
source = {
   url = "git+https://github.com/weibocom/motan-openresty.git",
   tag = "v0.1.7"
}
description = {
   summary = "motan library for OpenResty",
   detailed = [[
                Motan is a cross-language remote procedure call(RPC) framework
                for rapid development of high performance distributed services.
                This is OpenResty motan implementation for Motan.
              ]],
   homepage = "https://github.com/weibocom/motan-openresty",
   license = "Apache 2.0"
}
dependencies = {
   "lua >= 5.1",
   "lua-resty-http >= 0.12",
   "lua-resty-timer >=0.0.1",
   "lua-resty-consul >= 0.2"
}

build = {
   type = "command",

   -- TODO(yunlong18): get install path from config
   build_command = "cd lib/motan/libs && gcc -g -o libmotan_tools.so -fpic -shared motan_tools.c",
   install_command = "cp -R lib/motan /usr/local/share/lua/5.1"..
                     " && mkdir -p /usr/local/lib/lua/5.1/"..
                     " && ln -sf /usr/local/share/lua/5.1/motan/libs/cmotan.so /usr/local/lib/lua/5.1/cmotan.so"..
                     " && ln -sf /usr/local/share/lua/5.1/motan/libs/libmotan_tools.so /lib/libmotan_tools.so"..
                     " && ldconfig"
}


