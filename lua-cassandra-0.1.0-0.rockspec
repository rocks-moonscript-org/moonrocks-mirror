package = "lua-cassandra"
version = "0.1.0-0"
source = {
  url = "git://github.com/thibaultCha/lua-cassandra",
  tag = "0.1.0"
}
description = {
  summary = "Lua Cassandra client",
  homepage = "http://thibaultcha.github.io/lua-cassandra",
  license = "MIT"
}
build = {
  type = "builtin",
  modules = {
    ["cassandra"] = "src/cassandra.lua",
    ["_cassandra"] = "src/_cassandra.lua",
    ["cassandra.v2"] = "src/cassandra/v2.lua",
    ["cassandra.session"] = "src/cassandra/session.lua",

    ["cassandra.constants.constants_v2"] = "src/cassandra/constants/constants_v2.lua",
    ["cassandra.constants.constants_v3"] = "src/cassandra/constants/constants_v3.lua",

    ["cassandra.marshallers.marshall_v2"] = "src/cassandra/marshallers/marshall_v2.lua",
    ["cassandra.marshallers.marshall_v3"] = "src/cassandra/marshallers/marshall_v3.lua",
    ["cassandra.marshallers.unmarshall_v2"] = "src/cassandra/marshallers/unmarshall_v2.lua",
    ["cassandra.marshallers.unmarshall_v3"] = "src/cassandra/marshallers/unmarshall_v3.lua",

    ["cassandra.protocol.reader_v2"] = "src/cassandra/protocol/reader_v2.lua",
    ["cassandra.protocol.reader_v3"] = "src/cassandra/protocol/reader_v3.lua",
    ["cassandra.protocol.writer_v2"] = "src/cassandra/protocol/writer_v2.lua",
    ["cassandra.protocol.writer_v3"] = "src/cassandra/protocol/writer_v3.lua",

    ["cassandra.utils"] = "src/cassandra/utils.lua",
    ["cassandra.classic"] = "src/cassandra/classic.lua"
  }
}
