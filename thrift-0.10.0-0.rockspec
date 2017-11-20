package = "thrift"
version = "0.10.0-0"
source = {
  url = "https://github.com/BixData/lua-thrift/archive/0.10.0-0.tar.gz",
  dir = "lua-thrift-0.10.0-0"
}
description = {
  summary = "LuaRocks packaging of Apache Thrift",
  detailed = [[
    LuaRocks packaging of Apache Thrift.
  ]],
  homepage = "https://github.com/BixData/lua-thrift",
  maintainer = "David Rauschenbach",
  license = "Apache 2.0"
}
dependencies = {
  "bit32 <= 5.3.0-1",
  "lua >= 5.1, <= 5.3",
  "luasocket <= 3.0rc1-2"
}
build = {
  type = "builtin",
  modules = {
    ["libluabitwise"] = "src/libluabitwise.lua",
    ["libluabpack"] = "src/libluabpack.lua",
    ["liblualongnumber"] = "src/liblualongnumber.lua",
    ["Thrift"] = "src/Thrift.lua",
    ["TBinaryProtocol"] = "src/TBinaryProtocol.lua",
    ["TBufferedTransport"] = "src/TBufferedTransport.lua",
    ["TCompactProtocol"] = "src/TCompactProtocol.lua",
    ["TFramedTransport"] = "src/TFramedTransport.lua",
    ["THttpTransport"] = "src/THttpTransport.lua",
    ["TJsonProtocol"] = "src/TJsonProtocol.lua",
    ["TMemoryBuffer"] = "src/TMemoryBuffer.lua",
    ["TProtocol"] = "src/TProtocol.lua",
    ["TServer"] = "src/TServer.lua",
    ["TSocket"] = "src/TSocket.lua",
    ["TTransport"] = "src/TTransport.lua"
  }
}
