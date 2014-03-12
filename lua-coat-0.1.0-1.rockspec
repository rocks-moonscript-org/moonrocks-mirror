package = 'lua-Coat'
version = '0.1.0-1'
source = {
   url = 'http://cloud.github.com/downloads/fperrad/lua-Coat/lua-coat-0.1.0.tar.gz',
   dir = '.',
   md5 = 'cd9a4581e3dd281cecb9a72ddf27c2ac',
}
description = {
   summary = "Yet Another Lua Object-Oriented Model",
   detailed = [[
      lua-Coat is a Lua port of Coat (http://www.sukria.net/perl/coat/),
      a Perl module which mimics Moose (http://www.iinteractive.com/moose/),
      an object system for Perl5 which borrows features from  Perl6,
      CLOS (LISP), Smalltalk and many other languages.
   ]],
   homepage = 'http://luaforge.net/projects/lua-coat/',
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
      ['Coat.Types']          = 'src/Coat/Types.lua',
   },
   copy_directories = { 'doc', 'patch', 'test' },
}
