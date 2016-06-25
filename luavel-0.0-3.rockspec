package = "luavel"
version = "0.0-3"

source = {
    url = "git://github.com/eklundkristoffer/luavel"
}

description = {
    summary = "An example for the LuaRocks tutorial.",
    detailed = [[
       This is an example for the LuaRocks tutorial.
       Here we would put a detailed, typically
       paragraph-long description.
    ]],
    homepage = "http://example.com", -- We don't have one yet
    license = "MIT" -- or whatever you like
}

dependencies = {
    "lua >= 5.1, < 5.3",
    'xavante >= 2.3',
    'wsapi-xavante >= 1.6.1',
    'dkjson ~> 2.5',
}

build = {
    type = "builtin",
    modules = {
        luavel = "luavel.lua"
    },
    install = {
      bin = {
         luavel = "luavel"
      }
   }
}
