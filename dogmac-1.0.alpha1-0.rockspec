package = "dogmac"
version = "1.0.alpha1-0"

description = {
  summary = "Compiler for the Dogma language.",
  detailed = [[
  Compiler for the Dogma language.
  ]],
  license = "",
  homepage = "http://dogmalang.org",
  maintainer = "Justo Labs <hello@justolabs.com>"
}

source = {
  url = "https://bitbucket.org/dogmalang"
}

dependencies = {
  "lua >= 5.3",
  "dogma-core >= 1.0.alpha1",
  "lua_cliargs >= 3.0",
  "penlight >= 1.5"
}

-- devDependencies = {
--   "justo-assert >= 1.0.alpha1",
--   "justo-plugin-cli >= 1.0.alpha1",
--   "justo-plugin-fs >= 1.0.alpha1"
-- }

build = {
  type = "builtin",

  modules = {
    ["dogmac.linter"] = "src/linter.lua",
    ["dogmac.js"] = "src/js.lua"
  },

  install = {
    bin = {
      ["dogmac"] = "bin/dogmac.lua"
    }
  }
}
