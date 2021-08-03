package = "lua-resty-console"
version = "0.1.1-1"
source = {
   url = "git://github.com/nicoster/lua-resty-console",
   tag = "v0.1.1"
}
description = {
   summary = "Interactive console (REPL) for Openresty to inspect Lua VM internal state, to run lua code, to invoke functions and more",
   homepage = "https://github.com/nicoster/lua-resty-console",
   license = "MIT <http://opensource.org/licenses/MIT>"
}
dependencies = {
   "lua-hiredis-with-5.2-fix >= 0.2.2",
   "inspect >= 2.0",
   "argparse >= 0.6.0",
}

build = {
   type = "builtin",
   modules = {
      ["resty.console"] = "lib/resty/console.lua",
      ["resty.console.binding"] = "lib/resty/console/binding.lua",
      ["resty.console.client"] = "lib/resty/console/client.lua",
      ["resty.console.completer"] = "lib/resty/console/completer.lua",
      ["resty.console.consts"] = "lib/resty/console/consts.lua",
      ["resty.console.readline"] = "lib/resty/console/readline.lua",
      ["resty.console.readline_h"] = "lib/resty/console/readline_h.lua",
      ["resty.console.resp"] = "lib/resty/console/resp.lua",
      ["resty.console.utils"] = "lib/resty/console/utils.lua",
   },
   install = {
      bin = {
         ["resty-cli"] = "bin/resty-cli",
      }
  },
}
