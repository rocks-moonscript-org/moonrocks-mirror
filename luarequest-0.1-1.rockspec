package = "luarequest"
version = "0.1-1"
source = {
   url = "git+https://github.com/UZIhuhuhu/luarequest"
}
description = {
   summary = "A request module based luasocket",
   detailed = [[
      This is an example for the LuaRocks tutorial.
      Here we would put a detailed, typically
      paragraph-long description.
   ]],
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
  type = "builtin",
  modules = {
    luarequest = "request.lua"
  }
}