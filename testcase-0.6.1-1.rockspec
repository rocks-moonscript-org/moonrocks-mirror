rockspec_format = '3.0'
package = 'testcase'
version = '0.6.1-1'
source = {
    url = 'git+https://github.com/mah0x211/lua-testcase.git',
    tag = 'v0.6.1',
}
description = {
    summary = 'a small helper tool to run the test files.',
    homepage = 'https://github.com/mah0x211/lua-testcase',
    license = 'MIT',
    maintainer = 'Masatoshi Fukunaga'
}
dependencies = {
    'lua >= 5.1',
    'mah0x211/assert >= 0.3.2',
    'mah0x211/basename >= 0.1.0',
    'mah0x211/chdir >= 0.2.0',
    'mah0x211/dirname >= 0.1.0',
    'mah0x211/errno >= 0.3.0',
    'mah0x211/fstat >= 0.2.2',
    'mah0x211/getcwd >= 0.2.0',
    'mah0x211/isa >= 0.2',
    'mah0x211/nosigpipe ~> 0.1',
    'mah0x211/opendir >= 0.2.1',
    'mah0x211/realpath >= 0.2.1',
    'mah0x211/selectex >= 0.1.0',
    'mah0x211/string-contains >= 0.1.0',
    'mah0x211/string-split >= 0.3.0',
    'mah0x211/string-trim >= 0.2.0',
}
build = {
    type = 'builtin',
    install = {
        bin = {
            testcase = 'bin/testcase.lua'
        }
    },
    modules = {
        ['testcase'] = 'lib/testcase.lua',
        ['testcase.eval'] = 'lib/eval.lua',
        ['testcase.exit'] = 'lib/exit.lua',
        ['testcase.filesystem'] = 'lib/filesystem.lua',
        ['testcase.getopts'] = 'lib/getopts.lua',
        ['testcase.iohook'] = 'lib/iohook.lua',
        ['testcase.printer'] = 'lib/printer.lua',
        ['testcase.registry'] = 'lib/registry.lua',
        ['testcase.runner'] = 'lib/runner.lua',
        ['testcase.fork'] = {
            sources = { 'src/fork.c' },
        },
        ['testcase.getpid'] = {
            sources = { 'src/getpid.c' },
        },
        ['testcase.timer'] = {
            sources = { 'src/timer.c' },
        },
    }
}
