package = "LuaPDU"
version = "0.1-1"
source = {
  url = "https://github.com/0x4c4a/luapdu.git",
  tag = "v0.1-1",
  dir = "lua-pdu"
}
description = {
  summary = "PDU SMS encoder/decoder.",
  detailed = [[
    This is a module for decoding and encoding
    PDU SMS which is used for GSM communication.
  ]],
  homepage = "https://github.com/0x4c4a/luapdu.git",
  maintainer = "Linards.Jukmanis@0x4c4a.com",
  license = "MIT/X11"
}
dependencies = {
  "lua ~> 5.1",
  "luabitop"
}
build = {
  type = "builtin",
  modules = {
    ["luapdu"] = "lua/luapdu.lua",
    ["luapdu.string"] = "lua/luapdu/string.lua",
    ["luapdu.smsobject"] = "lua/luapdu/smsobject.lua"
  }
}