package = 'lua-bdd4tap'
version = '1.0-2'
source = {
    url = 'git://github.com/henry4k/lua-bdd4tap',
    tag = 'v1.0-2'
}
description = {
    summary = 'A BDD wrapper for lua-testmore',
    license = 'UNLICENCE',
    homepage = 'https://github.com/henry4k/lua-bdd4tap',
    maintainer = 'henry4k'
}
dependencies = {
    'lua >= 5.1',
    'lua-testmore >= 0.3'
}
build = {
    type = 'builtin',
    modules = {
        ['test.bdd']          = 'test/bdd.lua',
        ['test.bdd.describe'] = 'test/bdd/describe.lua',
    }
}
