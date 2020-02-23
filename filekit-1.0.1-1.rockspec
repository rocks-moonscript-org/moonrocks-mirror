package = "filekit"
version = "1.0.1-1"
source = {
  url = "git://github.com/daelvn/filekit.git",
  tag = "v1.0.1",
}
description = {
  summary = "A wrapper around LuaFileSystem that implements some more functions.",
  detailed = [[
    filekit simplifies the methods used by lfs and implements some other functions
    for checking whether files exist, getting octal permissions... It also serves
    as a drop-in replacement for the ComputerCraft FS API, so you might write
    programs compatible with both platforms (CC and PC).
  ]],
  homepage = "https://git.daelvn.ga/filekit/"
}
dependencies = {
  "lua >= 5.1",
  "luafilesystem"
}
build = {
  type = "none",
  install = {
    lua = { "filekit.lua" }
  }
}
