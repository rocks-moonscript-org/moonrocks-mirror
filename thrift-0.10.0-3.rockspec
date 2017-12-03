package = "thrift"
version = "0.10.0-3"
source = {
  url = "https://github.com/BixData/lua-thrift/archive/0.10.0-3.tar.gz",
  dir = "lua-thrift-0.10.0-3"
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
  "long >= 1.0.2, < 2.0.0",
  "lua >= 5.1, < 5.3",
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
    
    ["thrift.print_r"] = "src/thrift/print_r.lua",
    ["thrift.TApplicationException"] = "src/thrift/TApplicationException.lua",
    ["thrift.TApplicationExceptionType"] = "src/thrift/TApplicationExceptionType.lua",
    ["thrift.terror"] = "src/thrift/terror.lua",
    ["thrift.TException"] = "src/thrift/TException.lua",
    ["thrift.TServer"] = "src/thrift/TServer.lua",
    ["thrift.TSimpleServer"] = "src/thrift/TSimpleServer.lua",
    
    ["thrift.protocol.TBinaryProtocol"] = "src/thrift/protocol/TBinaryProtocol.lua",
    ["thrift.protocol.TBinaryProtocolFactory"] = "src/thrift/protocol/TBinaryProtocolFactory.lua",
    ["thrift.protocol.TCompactProtocol"] = "src/thrift/protocol/TCompactProtocol.lua",
    ["thrift.protocol.TCompactProtocolFactory"] = "src/thrift/protocol/TCompactProtocolFactory.lua",
    ["thrift.protocol.TCompactProtocolType"] = "src/thrift/protocol/TCompactProtocolType.lua",
    ["thrift.protocol.TJsonProtocol"] = "src/thrift/protocol/TJsonProtocol.lua",
    ["thrift.protocol.TJsonProtocolFactory"] = "src/thrift/protocol/TJsonProtocolFactory.lua",
    ["thrift.protocol.TMessageType"] = "src/thrift/protocol/TMessageType.lua",
    ["thrift.protocol.TProtocol"] = "src/thrift/protocol/TProtocol.lua",
    ["thrift.protocol.TProtocolException"] = "src/thrift/protocol/TProtocolException.lua",
    ["thrift.protocol.TProtocolExceptionType"] = "src/thrift/protocol/TProtocolExceptionType.lua",
    ["thrift.protocol.TProtocolFactory"] = "src/thrift/protocol/TProtocolFactory.lua",
    ["thrift.protocol.TType"] = "src/thrift/protocol/TType.lua",
    
    ["thrift.transport.TBufferedTransport"] = "src/thrift/transport/TBufferedTransport.lua",
    ["thrift.transport.TBufferedTransportFactory"] = "src/thrift/transport/TBufferedTransportFactory.lua",
    ["thrift.transport.TFramedTransport"] = "src/thrift/transport/TFramedTransport.lua",
    ["thrift.transport.TFramedTransportFactory"] = "src/thrift/transport/TFramedTransportFactory.lua",
    ["thrift.transport.THttpTransport"] = "src/thrift/transport/THttpTransport.lua",
    ["thrift.transport.THttpTransportFactory"] = "src/thrift/transport/THttpTransportFactory.lua",
    ["thrift.transport.TMemoryBuffer"] = "src/thrift/transport/TMemoryBuffer.lua",
    ["thrift.transport.TServerSocket"] = "src/thrift/transport/TServerSocket.lua",
    ["thrift.transport.TServerTransport"] = "src/thrift/transport/TServerTransport.lua",
    ["thrift.transport.TSocket"] = "src/thrift/transport/TSocket.lua",
    ["thrift.transport.TTransport"] = "src/thrift/transport/TTransport.lua",
    ["thrift.transport.TTransportException"] = "src/thrift/transport/TTransportException.lua",
    ["thrift.transport.TTransportExceptionType"] = "src/thrift/transport/TTransportExceptionType.lua",
    ["thrift.transport.TTransportFactory"] = "src/thrift/transport/TTransportFactory.lua"
  }
}
