local detailed = [[
This library provides concatenation-based prototypical inheritance,
heavily optimized with clone families and garbage collection.
]]

package = "families"
version = "0.1-1"

source = {
    url = "git://github.com/marcoonroad/families",
    tag = "v0.1-1",
}

description = {
    summary  = "Concatenation-based prototypes implementation for Lua.",
    detailed = detailed,
    homepage = "http://github.com/marcoonroad/families/wiki",
    license  = "MIT/X11",
}

dependencies = {
    "lua >= 5.1, < 5.4",
}

build = {
    type = "builtin",

    modules = {
        [ "families" ]                          = "src/families/init.lua",
        [ "families.internals.structure" ]      = "src/families/internals/structure.lua",
        [ "families.internals.metatable" ]      = "src/families/internals/metatable.lua",
        [ "families.internals.weak" ]           = "src/families/internals/weak.lua",
        [ "families.internals.standard" ]       = "src/families/internals/standard.lua",
        [ "families.internals.memory" ]         = "src/families/internals/memory.lua",
        [ "families.internals.reason" ]         = "src/families/internals/reason.lua",
        [ "families.internals.reason.invalid" ] = "src/families/internals/reason/invalid.lua",
        [ "families.internals.reason.missing" ] = "src/families/internals/reason/missing.lua",
    },
}
