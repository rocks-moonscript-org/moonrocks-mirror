package = "arweave"

version = "0.0.1-5"

source = {
   url = "git+https://github.com/crookse/arweave-lua"
}

description = {
   summary = "Slick Lua tooling for building in the Arweave ecosystem",
   detailed = "Ships with slick tooling so you can develop your Arweave Lua modules with confidence.",
   homepage = "https://github.com/crookse/arweave-lua",
   license = "GPL-3.0"
}

dependencies = {
   "lua >= 5.1",
   "busted ~> 2",
   "lua_cliargs ~> 3",
   "luacheck ~> 1",
   "penlight ~> 1",
}

build = {
   type = "builtin",

   modules = {
      ["arweave"] = "src/arweave.lua",
      ["arweave.testing.utils"] = "src/testing/utils.lua",
      ["arweave.testing.output_handlers.marton"] = "src/testing/output_handlers/marton.lua",
      ["arweave.transactions.tags"] = "src/transactions/tags.lua",
   },

  install = {
    bin = {
      ['arweave'] = 'bin/arweave',
      ['arweave-fmt'] = 'bin/arweave-luaformatter-1.3.6'
    }
  }
}
