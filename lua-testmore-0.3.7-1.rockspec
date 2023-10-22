package = 'lua-TestMore'
version = '0.3.7-1'
source = {
    url = 'https://framagit.org/fperrad/lua-TestMore/raw/releases/lua-testmore-0.3.7.tar.gz',
    md5 = 'e7a5f6f52d637e5d99391ea0eaf9b37b',
    dir = 'lua-TestMore-0.3.7',
}
description = {
    summary = "an Unit Testing Framework",
    detailed = [[
        lua-TestMore is a port of the Perl5 module Test::More.

        It uses the Test Anything Protocol as output,
        that allows a compatibility with the Perl QA ecosystem.

        It's an extensible framework.

        It allows a simple and efficient way to write tests (without OO style).

        Some tests could be marked as TODO or skipped.

        Errors could be fully checked with error_like().
    ]],
    homepage = 'https://fperrad.frama.io/lua-TestMore/',
    maintainer = 'Francois Perrad',
    license = 'MIT/X11'
}
dependencies = {
    'lua >= 5.1',
}
build = {
    type = 'builtin',
    modules = {
        ['Test.Builder']                = 'src/Test/Builder.lua',
        ['Test.Builder.SocketOutput']   = 'src/Test/Builder/SocketOutput.lua',
        ['Test.Builder.Tester']         = 'src/Test/Builder/Tester.lua',
        ['Test.Builder.Tester.File']    = 'src/Test/Builder/Tester/File.lua',
        ['Test.More']                   = 'src/Test/More.lua',
    },
    copy_directories = { 'docs', 'test' },
}
