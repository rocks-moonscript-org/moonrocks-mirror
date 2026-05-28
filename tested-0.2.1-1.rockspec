rockspec_format = "3.0"

package = "tested"
version = "0.2.1-1"

source = {
   url = "git+https://github.com/FourierTransformer/tested.git",
   branch = "main",
   tag = "0.2.1"
}

description = {
   summary = "A Unit Testing Framework for the Teal and Lua",
   homepage = "https://github.com/FourierTransformer/tested",
   license = "MIT"
}

dependencies = {
   "luafilesystem",
   "argparse",
   "luacov",
   "lanes==3.17.2"
}

test_dependencies = {
   "tl"
}

test = {
   type = "tested",
   flags = { "-n", "0", "-t", "demo" }
}

build = {
   -- doesn't install the teal files just yet...
   -- type = "cyan",
   type = "builtin",
   modules = {
      tested = "build/tested.lua",

      ["tested.assert_table"] = "build/tested/assert_table.lua",
      ["tested.cli"] = "build/tested/cli.lua",
      ["tested.file_loader"] = "build/tested/file_loader.lua",
      ["tested.main"] = "build/tested/main.lua",
      ["tested.test_runner"] = "build/tested/test_runner.lua",
      ["tested.types"] = "build/tested/types.lua",
      ["tested.util"] = "build/tested/util.lua",

      ["tested.languages.teal"] = "build/tested/languages/teal.lua",

      ["tested.libs.ansicolors"] = "build/tested/libs/ansicolors.lua",
      ["tested.libs.dkjson"] = "src/tested/libs/dkjson.lua",
      ["tested.libs.inspect"] = "build/tested/libs/inspect.lua",
      ["tested.libs.logging"] = "build/tested/libs/logging.lua",
      ["tested.libs.tadd"] = "build/tested/libs/tadd.lua",
      ["tested.libs.ThreadPool"] = "build/tested/libs/ThreadPool.lua",

      ["tested.file_output.txt"] = "build/tested/file_output/txt.lua",
      ["tested.file_output.json"] = "build/tested/file_output/json.lua",

      ["tested.results.plain"] = "build/tested/results/plain.lua",
      ["tested.results.tap"] = "build/tested/results/tap.lua",
      ["tested.results.terminal"] = "build/tested/results/terminal.lua",

      -- I might play with this a bit and see how it goes
      ["luarocks.test.tested"] = "src/luarocks/test/tested.lua",
   },
   install = {
      bin = {
         'src/bin/tested'
      },
      lua = {
         -- swapping to a .d.tl to avoid tested.tl compilation on test run
         ["types/tested/tested.tl"] = "./types/tested.d.tl",
      }
   }
}
