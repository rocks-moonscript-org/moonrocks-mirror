rockspec_format = "3.0"
package = "nats-lua"
version = "0.4.1-1"
source = {
   url = "git+https://github.com/SamOrlando/nats-lua.git",
   tag = "v0.4.1",
}
description = {
   summary = "NATS client for Lua with headers, request/reply, reconnect, JetStream, KV, Object Store, services and nkeys",
   detailed = [[
Pure Lua NATS client on LuaSocket: pub/sub, queue groups, headers
(HPUB/HMSG), muxed request/reply with no-responders detection, PING/PONG
keepalive, reconnect with server pool and backoff, drain, max_payload and
subject validation, optional TLS (LuaSec), JetStream streams, pull
consumers, Key-Value buckets and Object Store buckets (ADR-20,
nats.go compatible, pure Lua SHA-256), consume/ordered/push consumers,
Service API (micro), nkey/creds auth with pure Lua ed25519 and WebSocket
transport. Lua 5.1-5.4 and LuaJIT.
]],
   homepage = "https://github.com/SamOrlando/nats-lua",
   license = "MIT",
   labels = { "nats", "messaging", "jetstream", "pubsub" },
}
dependencies = {
   "lua >= 5.1, < 5.5",
   "luasocket >= 3.0",
   "nuid >= 1.0.0",
}
-- optional at runtime: lua-cjson (faster JSON, pure Lua fallback built in),
-- luasec (TLS), luaossl (faster SHA-256), luasodium / luatweetnacl (faster ed25519)
build = {
   type = "builtin",
   modules = {
      ["nats"] = "nats.lua",
      ["nats-jetstream"] = "nats-jetstream.lua",
      ["nats-kvs"] = "nats-kvs.lua",
      ["nats-objs"] = "nats-objs.lua",
      ["nats-sha256"] = "nats-sha256.lua",
      ["nats-nkeys"] = "nats-nkeys.lua",
      ["nats-micro"] = "nats-micro.lua",
   },
}
test = {
   type = "command",
   script = "tests/test_nats.lua",
}
