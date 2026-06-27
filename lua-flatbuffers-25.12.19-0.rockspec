package = "lua-flatbuffers"
version = "25.12.19-0"
source = {
   url = "git+https://github.com/google/flatbuffers.git",
   tag = "v25.12.19"
}
description = {
   summary = "FlatBuffers: Memory Efficient Serialization Library",
   homepage = "https://github.com/google/flatbuffers",
   license = "Apache-2.0"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["flatbuffers"] = "lua/flatbuffers.lua",
      ["flatbuffers.binaryarray"] = "lua/flatbuffers/binaryarray.lua",
      ["flatbuffers.builder"] = "lua/flatbuffers/builder.lua",
      ["flatbuffers.compat"] = "lua/flatbuffers/compat.lua",
      ["flatbuffers.compat_5_1"] = "lua/flatbuffers/compat_5_1.lua",
      ["flatbuffers.compat_5_3"] = "lua/flatbuffers/compat_5_3.lua",
      ["flatbuffers.compat_luajit"] = "lua/flatbuffers/compat_luajit.lua",
      ["flatbuffers.numTypes"] = "lua/flatbuffers/numTypes.lua",
      ["flatbuffers.view"] = "lua/flatbuffers/view.lua",
   }
}
