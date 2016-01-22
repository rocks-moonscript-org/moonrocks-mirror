package = "lua-filesize"
version = "0.1.1-1"
source = {
    url = "git://github.com/starius/lua-filesize.git",
    tag = "0.1.1",
}
description = {
    summary = "Generate a human readable string describing the file size",
    license = "MIT",
    homepage = "https://github.com/starius/lua-filesize",
    detailed = [[
lua-filesize, Lua library to generate a human readable string describing the file size

Inspired by https://github.com/avoidwork/filesize.js

## Reference

This library installs a single module called `filesize`.
It is represented with a function of the same name.
Principally it takes an integer (filesize) and returns
a human readable string describing the file size.

`filesize()` accepts an optional second argument `options`
of type `table`, so you can customize the output.

  * `base` (number)
    Number base, default is 2

  * `bits` (boolean)
    Enables bit sizes, default is false

  * `exponent` (number)
    Specifies the SI suffix via exponent,
    e.g. 2 is MB for bytes, default is -1

  * `output` (string)
    Output of function (array, exponent, object, or string),
    default is string

  * round (number)
    Decimal place, default is 2

  * spacer (string)
    Character between the result and suffix, default is " "

  * suffixes (table)
    Dictionary of SI suffixes to replace for localization,
    defaults to english if no match is found

  * unix (boolean)
    Enables unix style human readable output, e.g. `ls -lh`,
    default is false

## Examples

> filesize = require 'filesize'
> filesize(500)
"500 B"
> filesize(500, {bits = true})
"3.91 Kb"
> filesize(265318)
"259.1 KB"
> filesize(265318, {base = 10})
"265.32 kB"
> filesize(265318, {round = 0})
"259 KB"
> filesize(265318, {output = "array"})
{ 259.1, "KB" }
> filesize(265318, {output = "object"})
{
  value = 259.1,
  suffix = "KB",
}
> filesize(1, {suffixes = {B = "Б"}})
"1 Б"
> filesize(1024)
"1 KB"
> filesize(1024, {exponent = 0})
"1024 B"
> filesize(1024, {output = "exponent"})
1
]],
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        ['filesize'] = 'src/filesize/filesize.lua',
    },
}
