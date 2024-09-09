package = "lexpect"
version = "0.1.0-1"
source = {
   url = "git+https://codeberg.org/KanakoTheGay/lexpect",
   tag = "0.1.0"
}
description = {
   homepage = "https://codeberg.org/KanakoTheGay/lexpect",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "luarocks-build-rust-mlua",
}
build = {
   type = "rust-mlua",
   modules = {
      "lexpect"
   },
   features = {
      "lib"
   }
}
