package = "lualand"
version = "0.0-1"

source = {
    url = "git://github.com/eklundkristoffer/lualand"
}

description = {
    summary = "Lualand is a package with various classes and functions.",
    detailed = [[
       
    ]],
    homepage = "https://github.com/eklundkristoffer/lualand",
    license = "MIT" 
}

dependencies = {
    "lua >= 5.1, < 5.3"
}

build = {
    type = "builtin",
    modules = {
        collection = "collection/collection.lua"
    }
}
