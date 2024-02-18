rockspec_format = "3.0"
package = "norgopolis-server.lua"
version = "1.2.1-1"
source = {
   url = "https://github.com/nvim-neorg/norgopolis-server.lua/archive/v1.2.0.zip",
   dir = "norgopolis-server.lua-1.2.0"
}
description = {
   summary = "A vendored `norgopolis-server` binary for use in Lua applications.",
   detailed = "The Norgopolis server module automatically compiles and exposes a norgopolis-server binary which may be invoked from any program using the module as a dependency.",
   homepage = "https://github.com/nvim-neorg/norgopolis-server.lua",
   license = "MIT",
   labels = {
      "rust",
      "norgopolis",
      "neorg"
   }
}
dependencies = {
   "lua >= 5.1",
   "luarocks-build-rust-binary >= 3.0.0"
}
build = {
    type = "rust-binary",
    binary = "norgopolis-server@0.1.1",
    copy_directories = { "bin" },
}
