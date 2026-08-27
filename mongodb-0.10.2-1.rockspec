rockspec_format = "3.0"

package = "mongodb"
version = "0.10.2-1"

source = {
  url = "git+https://github.com/alexbevi/lua-mongodb.git",
  tag = "v0.10.2",
}

description = {
  summary = "Pure-Lua MongoDB driver",
  detailed = [[
    A coroutine-aware MongoDB driver implemented in Lua without wrapping
    libmongoc. Version 0.10.2 adds GSSAPI authentication through a packaged
    adapter for the operating system's Kerberos library.
  ]],
  homepage = "https://github.com/alexbevi/lua-mongodb",
  license = "Apache-2.0",
}

supported_platforms = {
  "linux",
  "macosx",
}

dependencies = {
  "lua >= 5.4, < 5.6",
  "copas >= 4.11, < 4.13",
  "getpid == 0.1.0-1",
  "lua-cryptorandom >= 0.0.6, < 0.1",
  "lua-zlib >= 1.4, < 1.5",
  "luasocket >= 3.1, < 4",
  "luasec >= 1.3, < 1.4",
  "md5 >= 1.3, < 1.4",
  "sha1 >= 0.5, < 0.6",
}

test_dependencies = {
  "busted == 2.3.0-1",
  "lua-csnappy == 0.1.5-2",
  "lua-zstd == 0.2.0-1",
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
    ["mongodb.config.credentials"] = "src/mongodb/config/credentials.lua",
    ["mongodb.config.options"] = "src/mongodb/config/options.lua",
    ["mongodb.config.uri"] = "src/mongodb/config/uri.lua",
    ["mongodb.command.executor"] = "src/mongodb/command/executor.lua",
    ["mongodb.command.hello"] = "src/mongodb/command/hello.lua",
    ["mongodb.command.security"] = "src/mongodb/command/security.lua",
    ["mongodb.auth"] = "src/mongodb/auth/init.lua",
    ["mongodb.auth.aws"] = "src/mongodb/auth/aws.lua",
    ["mongodb.auth.aws_credentials"] = "src/mongodb/auth/aws_credentials.lua",
    ["mongodb.auth.aws_ec2"] = "src/mongodb/auth/aws_ec2.lua",
    ["mongodb.auth.aws_ecs"] = "src/mongodb/auth/aws_ecs.lua",
    ["mongodb.auth.aws_web_identity"] = "src/mongodb/auth/aws_web_identity.lua",
    ["mongodb.auth.gssapi"] = "src/mongodb/auth/gssapi.lua",
    ["mongodb.auth.oidc"] = "src/mongodb/auth/oidc.lua",
    ["mongodb.auth.oidc_providers"] = "src/mongodb/auth/oidc_providers.lua",
    ["mongodb.auth.plain"] = "src/mongodb/auth/plain.lua",
    ["mongodb.auth.saslprep"] = "src/mongodb/auth/saslprep.lua",
    ["mongodb.auth.scram"] = "src/mongodb/auth/scram.lua",
    ["mongodb.auth.stringprep_tables"] = "src/mongodb/auth/stringprep_tables.lua",
    ["mongodb.auth.x509"] = "src/mongodb/auth/x509.lua",
    ["mongodb.change_stream"] = "src/mongodb/change_stream.lua",
    ["mongodb.client"] = "src/mongodb/client.lua",
    ["mongodb.client_bulk"] = "src/mongodb/client_bulk.lua",
    ["mongodb.crud"] = "src/mongodb/crud.lua",
    ["mongodb.cursor"] = "src/mongodb/cursor.lua",
    ["mongodb.discovery.dns"] = "src/mongodb/discovery/dns.lua",
    ["mongodb.error"] = "src/mongodb/error.lua",
    ["mongodb.gridfs"] = "src/mongodb/gridfs.lua",
    ["mongodb.handshake.metadata"] = "src/mongodb/handshake/metadata.lua",
    ["mongodb.monitoring"] = "src/mongodb/monitoring.lua",
    ["mongodb.operation_timeout"] = "src/mongodb/operation_timeout.lua",
    ["mongodb.network.transport"] = "src/mongodb/network/transport.lua",
    ["mongodb.pool"] = "src/mongodb/pool.lua",
    ["mongodb.runtime.cancellation"] = "src/mongodb/runtime/cancellation.lua",
    ["mongodb.runtime.contract"] = "src/mongodb/runtime/contract.lua",
    ["mongodb.runtime.copas"] = "src/mongodb/runtime/copas.lua",
    ["mongodb.runtime.copas_dns"] = "src/mongodb/runtime/copas_dns.lua",
    ["mongodb.runtime.copas_socket"] = "src/mongodb/runtime/copas_socket.lua",
    ["mongodb.runtime._gssapi"] = {
      sources = "src/mongodb/runtime/_gssapi.c",
    },
    ["mongodb.runtime.gssapi"] = "src/mongodb/runtime/gssapi.lua",
    ["mongodb.runtime.luasec"] = "src/mongodb/runtime/luasec.lua",
    ["mongodb.runtime.openssl"] = "src/mongodb/runtime/openssl.lua",
    ["mongodb.runtime.sha256"] = "src/mongodb/runtime/sha256.lua",
    ["mongodb.runtime.snappy"] = "src/mongodb/runtime/snappy.lua",
    ["mongodb.runtime.zlib"] = "src/mongodb/runtime/zlib.lua",
    ["mongodb.runtime.zstandard"] = "src/mongodb/runtime/zstandard.lua",
    ["mongodb.runtime"] = "src/mongodb/runtime/init.lua",
    ["mongodb.runtime.fake"] = "src/mongodb/runtime/fake.lua",
    ["mongodb.runtime.http"] = "src/mongodb/runtime/http.lua",
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
    ["mongodb.wire.op_compressed"] = "src/mongodb/wire/op_compressed.lua",
    ["mongodb.wire.op_msg"] = "src/mongodb/wire/op_msg.lua",
  },
}
