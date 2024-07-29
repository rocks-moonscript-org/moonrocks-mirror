package = 'lua-jmespath'
version = '0.1-0'

source = {
   url = 'git://github.com/PhenoML/lua-jmespath',
   tag = 'v0.1.0',
}

description = {
   summary  = 'Declaratively specify how to extract elements from a JSON document, in Lua',
   homepage = 'https://github.com/PhenoML/lua-jmespath',
   license  = 'MPL-2.0'
}

dependencies = {
   'lua >= 5.3',
   'lua-cjson >= 2.1.0'
}

build = {
   type = 'builtin',
   modules = {lua_jmespath = 'src/index.lua'}
}
