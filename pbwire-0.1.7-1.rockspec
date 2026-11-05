-- LuaRocks package for pbwire. VERSION is the source of truth:
-- scripts/sync-versions.sh rewrites `version`, `source.url` and
-- `source.dir` on every bump (the filename must stay
-- pbwire-<VERSION>-1.rockspec to match).
package = "pbwire"
version = "0.1.7-1"
source = {
  url = "https://github.com/jinganix/pbwire/archive/refs/tags/v0.1.7.tar.gz",
  dir = "pbwire-0.1.7",
}
description = {
  summary = "Protobuf wire codec: Lua tables through the pbwire C core",
  detailed = [[
    Dynamic protobuf codec for Lua 5.1+ (LuaJIT included): tables convert
    through the pbwire schema arena, builders encode hot loops without
    rebuilding. Loads a FileDescriptorSet at runtime; the C core is
    compiled in, so there are no runtime dependencies.
  ]],
  homepage = "https://github.com/jinganix/pbwire",
  license = "Apache-2.0",
}
dependencies = {
  "lua >= 5.1",
}
build = {
  type = "builtin",
  modules = {
    pbwire = {
      sources = {
        "bindings/lua/runtime/pbwire.c",
        "src/wire.c",
        "src/arena.c",
        "src/schema.c",
        "src/message.c",
        "src/encode.c",
        "src/decode.c",
        "src/ctx.c",
        "src/descriptor_set.c",
        "src/text.c",
        "src/json.c",
        "src/stream.c",
      },
      incdirs = { "include" },
    },
  },
}
