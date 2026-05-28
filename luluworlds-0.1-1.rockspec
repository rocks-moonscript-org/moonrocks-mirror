package = "luluworlds"
rockspec_format = "3.0"
version = "0.1-1"
source = {
  url = "git+https://github.com/luluworlds/luluworlds.git",
  tag = "0.1-1"
}
description = {
  summary = "teeworlds network protocol library (client only for now)",
  detailed = "",
  license = "Zlib",
  homepage = "https://github.com/ChillerDragon/luluworlds.git",
  issues_url = "https://github.com/luluworlds/luluworlds/issues",
  maintainer = "ChillerDragon <chillerdragon@gmail.com>",
  labels = { "teeworlds", "ddnet", "ddracenetwork", "game", "client", "server", "protocol", "networking", "0.7" }
}
dependencies = {
  "lua >= 5.1, <= 5.5",
  "luluman >= 2.0-0",
  "luasocket"
}
build = {
  type = "builtin",
  modules = {
    ["luluworlds.teeworlds_client"] = "src/teeworlds_client.lua",
    ["luluworlds.table"] = "src/table.lua",
    ["luluworlds.unpacker"] = "src/unpacker.lua",
    ["luluworlds.connection"] = "src/connection.lua",
    ["luluworlds.base"] = "src/base.lua",
    ["luluworlds.chunks"] = "src/chunks.lua",
    ["luluworlds.packet"] = "src/packet.lua",
    ["luluworlds.packer"] = "src/packer.lua",
    ["luluworlds.bits"] = "src/bits.lua",
    ["luluworlds.network"] = "src/network.lua",
  }
}
