package = "cctea"
version = "0.1.0-1"

local v = version:gsub("%-%d", "")

source = {
  url = "git://github.com/xpol/lua-cocos2d-x-xxtea.git",
  tag = "v"..v
}
description={
   summary = 'xxtea encryption used in cocos2d-x project',
   detailed = 'The xxtea encryption used in cocos2d-x project are now binding to Lua. This make easy to create a encryption Lua script in for cocos2d-x projects',
   homepage = "http://github.com/xpol/lua-cocos2d-x-xxtea",
   license = "The PHP License"
}
dependencies = { "lua >= 5.1" }
build = {
  type="builtin",
  modules={
    cctea={"xxtea.c", "lua-cctea.c"}
  }
}
