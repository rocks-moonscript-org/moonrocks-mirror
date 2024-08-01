package = 'lua-jmespath'
version = '0.1-3'

source = {
   url = 'git://github.com/PhenoML/lua-jmespath',
   tag = 'v0.1.3',
}

description = {
   summary  = 'Declaratively specify how to extract elements from a JSON document, in Lua',
   homepage = 'https://github.com/PhenoML/lua-jmespath',
   license  = 'MPL-2.0'
}

dependencies = {
   'lua >= 5.1',
   'lua-cjson >= 2.1.0'
}

build = {
  type = 'none',
  install = {
    lua = {
      ['lua-jmespath.init'] = 'src/init.lua',
      ['lua-jmespath.Lexer'] = 'src/Lexer.lua',
      ['lua-jmespath.lualib_bundle'] = 'src/lualib_bundle.lua',
      ['lua-jmespath.Parser'] = 'src/Parser.lua',
      ['lua-jmespath.Runtime'] = 'src/Runtime.lua',
      ['lua-jmespath.TreeInterpreter'] = 'src/TreeInterpreter.lua',
      ['lua-jmespath.utils.index'] = 'src/utils/index.lua',
    }
  },
}
