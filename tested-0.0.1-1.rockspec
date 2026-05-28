rockspec_format = "3.0"

package = "tested"
version = "0.0.1-1"

source = {
   url = "git+https://github.com/FourierTransformer/tested",
   tag = "0.0.1"
}

description = {
   summary = "A Unit Testing Framework for Lua and Teal",
   homepage = "https://github.com/FourierTransformer/tested",
   license = "MIT"
}

dependencies = {
   "luafilesystem",
   "argparse",
   "luacov",
   -- just use whatever version of tl they have installed
   -- they'll likely install tl first and then tested, so seems like a safe bet
   "tl", 
   "lanes==3.17.2"
}

build = {
   -- cyan doesn't install the teal files just yet...
   -- type = "cyan",
   type = "builtin",
   modules = {
      tested = "build/tested.lua",

      ["tested.assert_table"] = "build/tested/assert_table.lua",
      ["tested.file_loader"] = "build/tested/file_loader.lua",
      ["tested.main"] = "build/tested/main.lua",
      ["tested.test_runner"] = "build/tested/test_runner.lua",
      ["tested.types"] = "build/tested/types.lua",

      ["tested.libs.ansicolors"] = "build/tested/libs/ansicolors.lua",
      ["tested.libs.inspect"] = "build/tested/libs/inspect.lua",
      ["tested.libs.logging"] = "build/tested/libs/logging.lua",
      ["tested.libs.thread_pool"] = "build/tested/libs/thread_pool.lua",

      ["tested.results.plain"] = "build/tested/results/plain.lua",
      ["tested.results.terminal"] = "build/tested/results/terminal.lua",
   },
   install = {
      bin = {
         'src/bin/tested'
      },
      lua = {
         "src/tested.tl",

         ["tested.assert_table"] = "src/tested/assert_table.tl",
         ["tested.file_loader"] = "src/tested/file_loader.tl",
         ["tested.main"] = "src/tested/main.tl",
         ["tested.test_runner"] = "src/tested/test_runner.tl",
         ["tested.types"] = "src/tested/types.tl",

         ["tested.libs.ansicolors"] = "src/tested/libs/ansicolors.tl",
         ["tested.libs.inspect"] = "src/tested/libs/inspect.tl",
         ["tested.libs.logging"] = "src/tested/libs/logging.tl",
         ["tested.libs.thread_pool"] = "src/tested/libs/thread_pool.tl",

         ["tested.results.plain"] = "src/tested/results/plain.tl",
         ["tested.results.terminal"] = "src/tested/results/terminal.tl",
      }
   }
}
