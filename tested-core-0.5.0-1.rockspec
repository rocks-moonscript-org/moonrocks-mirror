rockspec_format = "3.0"

package = "tested-core"
version = "0.5.0-1"

source = {
   url = "git+https://github.com/FourierTransformer/tested.git",
   branch = "main",
   tag = "0.5.0"
}

description = {
   summary = "A Unit Testing Framework for the Teal and Lua",
   homepage = "https://github.com/FourierTransformer/tested",
   license = "MIT"
}

build = {
   type = "builtin",
   modules = {
      ["tested_core"] = "tested_core.lua",
   }
}
