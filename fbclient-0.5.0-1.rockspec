package = 'fbclient'
version = '0.5.0-1'
source = {
   url = 'http://fbclient.googlecode.com/hg/fbclient-0.5.0.zip'
}

description = {
   summary = 'A pure-Lua binding of the Firebird client library',
   detailed = [[
A collection of pure Lua modules that allows you to connect and execute
queries against the Firebird Relational Database.
It is a modular, 3-layer interface, aiming at full API coverage.
]],
   homepage = 'http://fbclient.googlecode.com/',
   license = 'MIT/X11',
}

dependencies = {
   'lua >= 5.1',
   'alien >= 0.5.0',
   'loop >= 2.3beta-1',
}

build = {
   type = 'builtin',
   modules = {}, --LuaRocks automatically copies all Lua modules found in the ./lua directory
}

