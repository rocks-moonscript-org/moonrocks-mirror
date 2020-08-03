package = "nokia-fork-lua-resty-socket"
version = "1.0.0-1"
source = {
  url = "git://github.com/nokia/lua-resty-socket",
  tag = "v1.0.0-nokia-1"
}
description = {
  summary = "Graceful fallback to LuaSocket for ngx_lua",
   detailed = [[
      This is a Nokia fork for the following library:
      https://luarocks.org/modules/thibaultcha/lua-resty-socket
   ]],
  homepage = "https://github.com/nokia/lua-resty-socket",
  license = "MIT"
}
build = {
  type = "builtin",
  modules = {
    ["resty.socket"] = "lib/resty/socket.lua"
  }
}
