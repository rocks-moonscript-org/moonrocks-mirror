package = "lexpect"
version = "0.2.2-1"
source = {
   url = "git+https://codeberg.org/KanakoTheGay/lexpect",
   tag = "0.2.2"
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
   default_features = false,
   features = {
      "lib"
   }
}
