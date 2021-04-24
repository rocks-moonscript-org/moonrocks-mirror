package = "matcher_combinators"
version = "0.1.1-1"

rockspec_format = "3.0"

source = {
   url = "git://github.com/m00qek/matcher_combinators.lua",
   tag = "v0.1.1"
}

description = {
   homepage = "https://github.com/m00qek/matcher_combinators.lua",
   summary = "Test library for asserting deeply nested data structures",
   labels = { "test", "assert" },
   license = "MIT"
}

dependencies = {
   "lua >= 5.1"
}

test_dependencies = {
    "busted",
    "luacheck",
}

test = {
   type = "busted"
}

build = {
   type = 'builtin',
   modules = {
      ["matcher_combinators"]                  = "src/matcher_combinators.lua",

      ["matcher_combinators.matchers"]         = "src/matcher_combinators/matchers.lua",
      ["matcher_combinators.matchers.boolean"] = "src/matcher_combinators/matchers/boolean.lua",
      ["matcher_combinators.matchers.number"]  = "src/matcher_combinators/matchers/number.lua",
      ["matcher_combinators.matchers.string"]  = "src/matcher_combinators/matchers/string.lua",
      ["matcher_combinators.matchers.table"]   = "src/matcher_combinators/matchers/table.lua",
      ["matcher_combinators.matchers.array"]   = "src/matcher_combinators/matchers/array.lua",
      ["matcher_combinators.matchers.value"]   = "src/matcher_combinators/matchers/value.lua",
      ["matcher_combinators.matchers.base"]    = "src/matcher_combinators/matchers/base.lua",

      ["matcher_combinators.pprint"]           = "src/matcher_combinators/pprint.lua",
      ["matcher_combinators.pprint.options"]   = "src/matcher_combinators/pprint/options.lua",
      ["matcher_combinators.pprint.printer"]   = "src/matcher_combinators/pprint/printer.lua",
      ["matcher_combinators.pprint.colors"]    = "src/matcher_combinators/pprint/colors.lua",
      ["matcher_combinators.pprint.indent"]    = "src/matcher_combinators/pprint/indent.lua",
      ["matcher_combinators.pprint.table"]     = "src/matcher_combinators/pprint/table.lua",

      ["matcher_combinators.luassert"]         = "src/matcher_combinators/luassert.lua",
      ["matcher_combinators.resolver"]         = "src/matcher_combinators/resolver.lua",
      ["matcher_combinators.utils"]            = "src/matcher_combinators/utils.lua"
   }
}
