build = {
  install = {
    lua = {
      "filekit.lua"
    }
  },
  type = "none"
}
dependencies = {
  "lua >= 5.1",
  "luafilesystem"
}
description = {
  detailed = "filekit simplifies the methods used by lfs and implements some other functions for checking whether files exist, getting octal permissions... It also serves as a drop-in replacement for the ComputerCraft FS API, so you might write programs compatible with both platforms (CC and PC).\n",
  homepage = "https://github.com/daelvn/filekit",
  summary = "A wrapper around LuaFileSystem that implements some more functions."
}
package = "filekit"
rockspec_format = "3.0"
source = {
  tag = "v1.4",
  url = "git://github.com/daelvn/filekit.git"
}
version = "1.4-1"
