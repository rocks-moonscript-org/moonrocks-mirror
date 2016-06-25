package = "luavel"
version = "0.0-2"

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
    "lua >= 5.1, < 5.3"
}

build = {
    type = "builtin",
    modules = {
        luavel = "src/luavel.lua"
    },
    install = {
      bin = {
         luavel = "luavel"
      }
   }
}
