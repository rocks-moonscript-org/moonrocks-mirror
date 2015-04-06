
package = "Luno"
version = "20141204-1"
source =
{
    url = "http://www.echiesse.net.br/download/luno/luno-20141204.zip",
}

description =
{
    summary = "General purpose libraries for Lua.",
    detailed = [[Luno is a pure Lua implementation of a series of extensions for common tasks not covered in the standard library.
The library comprises extended functions for dealing with strings, tables and io as well as some other general purpose functions like deep copy of tables.

Luno offers a small framework for object oriented programming. It is possible do declare a class, define a contructor, methods and even use inheritance.

Luno also provides support for functional programming. Functions like map, filter, reduce and many list operations are available. Also, support for function composition and partial parameter application (sometimes refered to as currying) is implemented.

Note: Luno means Lua (moon) in esperanto.]],
    homepage = "http://code.google.com/p/luno/",
    license = "MIT",
}

dependencies =
{
    "lua >= 5.1"
}

build =
{
    type = "builtin",
    modules =
    {
        luno = "init.lua",
        ["luno.argReader"]  = "argReader.lua",
        ["luno.base"]       = "base.lua",
        ["luno.functional"] = "functional.lua",
        ["luno.io"]         = "io.lua",
        ["luno.oop"]        = "oop.lua",
        ["luno.string"]     = "string.lua",
        ["luno.table"]      = "table.lua",
        ["luno.util"]       = "util.lua",
    }
}
