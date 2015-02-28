package = 'lua-mock'
version = '1.0-2'
source = {
    url = 'git://github.com/henry4k/lua-mock',
    tag = 'v1.0-2'
}
description = {
    summary = 'Provides mocking utilities.',
    license = 'UNLICENCE',
    homepage = 'https://github.com/henry4k/lua-mock',
    maintainer = 'henry4k'
}
dependencies = {
    'lua >= 5.2'
}
build = {
    type = 'builtin',
    modules = {
        ['test.mock.ValueMatcher']   = 'src/test/mock/ValueMatcher.lua',
        ['test.mock.Mock']           = 'src/test/mock/Mock.lua',
        ['test.mock.ProgrammableFn'] = 'src/test/mock/ProgrammableFn.lua',
        ['test.mock.Spy']            = 'src/test/mock/Spy.lua'
    }
}
