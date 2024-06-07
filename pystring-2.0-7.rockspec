package = "pystring"
version = "2.0-7"
source = {
    url = "git://github.com/liaozhaoyan/pystring",
}
description = {
    summary = "pystring provides many string processing functions, such as split and strip. You can follow the python method to process Lua strings",
    license = "MIT",
    homepage = "https://github.com/liaozhaoyan/pystring",
    detailed = [[
pystring provides many string processing functions, such as split and strip. You can follow the python method to process Lua strings
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