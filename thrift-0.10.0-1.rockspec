package = "thrift"
version = "0.10.0-1"
source = {
  url = "https://github.com/BixData/lua-thrift/archive/0.10.0-1.tar.gz",
  dir = "lua-thrift-0.10.0-1"
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
  "long >= 1.0.0, < 2.0.0",
  "lua >= 5.1, <= 5.3",
  "luasocket <= 3.0rc1-2",
  "middleclass <= 4.1-0",
  "vstruct <= 2.0.1-1"
}
build = {
  type = "builtin",
  modules = {
    ["thrift"] = "src/thrift.lua",
    ["thrift.libluabitwise"] = "src/thrift/libluabitwise.lua",
    ["thrift.libluabpack"] = "src/thrift/libluabpack.lua",
    ["thrift.liblualongnumber"] = "src/thrift/liblualongnumber.lua",
    ["thrift.TApplicationException"] = "src/thrift/TApplicationException.lua",
    ["thrift.TApplicationExceptionType"] = "src/thrift/TApplicationExceptionType.lua",
    ["thrift.TBinaryProtocol"] = "src/thrift/TBinaryProtocol.lua",
    ["thrift.TBinaryProtocolFactory"] = "src/thrift/TBinaryProtocolFactory.lua",
    ["thrift.TBufferedTransport"] = "src/thrift/TBufferedTransport.lua",
    ["thrift.TBufferedTransportFactory"] = "src/thrift/TBufferedTransportFactory.lua",
    ["thrift.TCompactProtocol"] = "src/thrift/TCompactProtocol.lua",
    ["thrift.TCompactProtocolFactory"] = "src/thrift/TCompactProtocolFactory.lua",
    ["thrift.TCompactType"] = "src/thrift/TCompactType.lua",
    ["thrift.terror"] = "src/thrift/terror.lua",
    ["thrift.TException"] = "src/thrift/TException.lua",
    ["thrift.TFramedTransport"] = "src/thrift/TFramedTransport.lua",
    ["thrift.TFramedTransportFactory"] = "src/thrift/TFramedTransportFactory.lua",
    ["thrift.thrift_print_r"] = "src/thrift/thrift_print_r.lua",
    ["thrift.THttpTransport"] = "src/thrift/THttpTransport.lua",
    ["thrift.THttpTransportFactory"] = "src/thrift/THttpTransportFactory.lua",
    ["thrift.TJsonProtocol"] = "src/thrift/TJsonProtocol.lua",
    ["thrift.TJsonProtocolFactory"] = "src/thrift/TJsonProtocolFactory.lua",
    ["thrift.TMemoryBuffer"] = "src/thrift/TMemoryBuffer.lua",
    ["thrift.TMessageType"] = "src/thrift/TMessageType.lua",
    ["thrift.TProtocol"] = "src/thrift/TProtocol.lua",
    ["thrift.TProtocolException"] = "src/thrift/TProtocolException.lua",
    ["thrift.TProtocolExceptionType"] = "src/thrift/TProtocolExceptionType.lua",
    ["thrift.TProtocolFactory"] = "src/thrift/TProtocolFactory.lua",
    ["thrift.TServer"] = "src/thrift/TServer.lua",
    ["thrift.TServerSocket"] = "src/thrift/TServerSocket.lua",
    ["thrift.TServerTransport"] = "src/thrift/TServerTransport.lua",
    ["thrift.TSimpleServer"] = "src/thrift/TSimpleServer.lua",
    ["thrift.TSocket"] = "src/thrift/TSocket.lua",
    ["thrift.TTransport"] = "src/thrift/TTransport.lua",
    ["thrift.TTransportException"] = "src/thrift/TTransportException.lua",
    ["thrift.TTransportExceptionType"] = "src/thrift/TTransportExceptionType.lua",
    ["thrift.TTransportFactory"] = "src/thrift/TTransportFactory.lua",
    ["thrift.TType"] = "src/thrift/TType.lua"
  }
}
