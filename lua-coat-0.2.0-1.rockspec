package = 'lua-Coat'
version = '0.2.0-1'
source = {
    url = 'http://cloud.github.com/downloads/fperrad/lua-Coat/lua-coat-0.2.0.tar.gz',
    md5 = '74b5a7f5ce94e55f08bfcd7cf4a3bf4e',
}
description = {
    summary = "Yet Another Lua Object-Oriented Model",
    detailed = [[
        lua-Coat is a Lua 5.1 port of Coat (http://www.sukria.net/perl/coat/),
        a Perl5 module which mimics Moose (http://www.iinteractive.com/moose/),
        an object system for Perl5 which borrows features from Perl6,
        CLOS (LISP), Smalltalk and many other languages.
    ]],
    homepage = 'http://lua-coat.luaforge.net/',
    maintainer = 'Francois Perrad',
    license = 'MIT/X11'
}
dependencies = {
    'lua >= 5.1',
}
build = {
    type = 'module',
    modules = {
        ['Coat']                = 'src/Coat.lua',
        ['Coat.Role']           = 'src/Coat/Role.lua',
        ['Coat.Types']          = 'src/Coat/Types.lua',
    },
    copy_directories = { 'doc', 'patch', 'test' },
}
