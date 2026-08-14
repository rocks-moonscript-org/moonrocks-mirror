rockspec_format = "3.0"

package = "mongodb"
version = "0.1.0-1"

source = {
  url = "git+https://github.com/alexbevi/lua-mongodb.git",
  tag = "v0.1.0",
}

description = {
  summary = "Pure-Lua MongoDB driver",
  detailed = [[
    A coroutine-aware MongoDB driver implemented in Lua without wrapping
    libmongoc. Version 0.1.0 is the production-core v1 release for Lua 5.4.
  ]],
  homepage = "https://github.com/alexbevi/lua-mongodb",
  license = "Apache-2.0",
}

dependencies = {
  "lua >= 5.4, < 5.5",
  "copas >= 4.11, < 4.12",
  "luasocket >= 3.1, < 4",
  "luasec >= 1.3, < 1.4",
  "luaossl >= 20220711",
}

test_dependencies = {
  "busted == 2.3.0-1",
  "luacheck == 1.2.0-1",
  "luacov == 0.17.0-1",
}

build = {
  type = "builtin",
  modules = {
    mongodb = "src/mongodb/init.lua",
    ["mongodb.admin"] = "src/mongodb/admin.lua",
    ["mongodb.api"] = "src/mongodb/api.lua",
    ["mongodb.bulk"] = "src/mongodb/bulk.lua",
    ["mongodb.bson.codec"] = "src/mongodb/bson/codec.lua",
    ["mongodb.bson.base64"] = "src/mongodb/bson/base64.lua",
    ["mongodb.bson.exact"] = "src/mongodb/bson/exact.lua",
    ["mongodb.bson"] = "src/mongodb/bson/init.lua",
    ["mongodb.bson.json"] = "src/mongodb/bson/json.lua",
    ["mongodb.bson.tagged"] = "src/mongodb/bson/tagged.lua",
    ["mongodb.bson.value"] = "src/mongodb/bson/value.lua",
    ["mongodb.bson.vector"] = "src/mongodb/bson/vector.lua",
    ["mongodb.config.options"] = "src/mongodb/config/options.lua",
    ["mongodb.config.uri"] = "src/mongodb/config/uri.lua",
    ["mongodb.command.executor"] = "src/mongodb/command/executor.lua",
    ["mongodb.command.hello"] = "src/mongodb/command/hello.lua",
    ["mongodb.command.security"] = "src/mongodb/command/security.lua",
    ["mongodb.auth.saslprep"] = "src/mongodb/auth/saslprep.lua",
    ["mongodb.auth.scram"] = "src/mongodb/auth/scram.lua",
    ["mongodb.auth.stringprep_tables"] = "src/mongodb/auth/stringprep_tables.lua",
    ["mongodb.client"] = "src/mongodb/client.lua",
    ["mongodb.crud"] = "src/mongodb/crud.lua",
    ["mongodb.cursor"] = "src/mongodb/cursor.lua",
    ["mongodb.error"] = "src/mongodb/error.lua",
    ["mongodb.handshake.metadata"] = "src/mongodb/handshake/metadata.lua",
    ["mongodb.monitoring"] = "src/mongodb/monitoring.lua",
    ["mongodb.operation_timeout"] = "src/mongodb/operation_timeout.lua",
    ["mongodb.network.transport"] = "src/mongodb/network/transport.lua",
    ["mongodb.pool"] = "src/mongodb/pool.lua",
    ["mongodb.runtime.cancellation"] = "src/mongodb/runtime/cancellation.lua",
    ["mongodb.runtime.copas"] = "src/mongodb/runtime/copas.lua",
    ["mongodb.runtime.copas_socket"] = "src/mongodb/runtime/copas_socket.lua",
    ["mongodb.runtime.luasec"] = "src/mongodb/runtime/luasec.lua",
    ["mongodb.runtime.openssl"] = "src/mongodb/runtime/openssl.lua",
    ["mongodb.runtime"] = "src/mongodb/runtime/init.lua",
    ["mongodb.runtime.fake"] = "src/mongodb/runtime/fake.lua",
    ["mongodb.runtime_guard"] = "src/mongodb/runtime_guard.lua",
    ["mongodb.retry_executor"] = "src/mongodb/retry_executor.lua",
    ["mongodb.sdam"] = "src/mongodb/sdam.lua",
    ["mongodb.session"] = "src/mongodb/session.lua",
    ["mongodb.session_executor"] = "src/mongodb/session_executor.lua",
    ["mongodb.socket_timeout_executor"] = "src/mongodb/socket_timeout_executor.lua",
    ["mongodb.standalone_executor"] = "src/mongodb/standalone_executor.lua",
    ["mongodb.selection"] = "src/mongodb/selection.lua",
    ["mongodb.topology"] = "src/mongodb/topology.lua",
    ["mongodb.topology_executor"] = "src/mongodb/topology_executor.lua",
    ["mongodb.unified.driver"] = "src/mongodb/unified/driver.lua",
    ["mongodb.unified.events"] = "src/mongodb/unified/events.lua",
    ["mongodb.unified.failpoints"] = "src/mongodb/unified/failpoints.lua",
    ["mongodb.unified.lifecycle"] = "src/mongodb/unified/lifecycle.lua",
    ["mongodb.unified.schema"] = "src/mongodb/unified/schema.lua",
    ["mongodb.unified.runner"] = "src/mongodb/unified/runner.lua",
    ["mongodb.wire.op_msg"] = "src/mongodb/wire/op_msg.lua",
  },
}
