package = "panpipe"
version = "0.1-1"
source = {
   url = "git+https://github.com/mitinarseny/panpipe.git"
}
description = {
   homepage = "https://github.com/mitinarseny/panpipe",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      panpipe = "panpipe.lua",
      unwrap = "unwrap.lua"
   }
}
