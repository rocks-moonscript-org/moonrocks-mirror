package = "streamcsv"
version = "1.1.0-1"
source = {
   url = "git+https://github.com/darkwiiplayer/streamcsv.git",
   tag = "v1.1.0"
}
description = {
   homepage = "https://github.com/darkwiiplayer/streamcsv",
   license = "Unlicense"
}
build = {
   type = "builtin",
   modules = {
      streamcsv = "streamcsv/init.lua",
      ["streamcsv.read"] = "streamcsv/read.lua",
      ["streamcsv.write"] = "streamcsv/write.lua"
   }
}
