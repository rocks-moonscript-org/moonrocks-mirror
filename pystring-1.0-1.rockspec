package = "pystring"
version = "1.0-1"
source = {
    url = "git://github.com/liaozhaoyan/pystring.git"
}
description = {
    summary = "pystring provides many string processing functions, such as split and strip. You can follow the python method to process Lua strings",
    license = "MIT",
    homepage = "https://github.com/liaozhaoyan/pystring",
    detailed = [[
pystring provides many string processing functions, such as split and strip. You can follow the python method to process Lua strings

## support function

* split
* rsplit
* partition
* rpartition
* splitlines
* strip
* lstrip
* rstrip
* join
* startswith
* endswith
* find
* rfind
* count
* shift
* swapcase
* capitalize
* title
* capwords
* islower
* isupper
* isdigit
* ishex
* isalnum
* istilte
* isfloat
* ljust
* rjust
* center
* zfill
* replace
* expandtabs

]],
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        ['pystring'] = 'src/pystring.lua',
    },
}
