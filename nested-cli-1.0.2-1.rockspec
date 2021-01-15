rockspec_format = "3.0"
package = "nested-cli"
version = "1.0.2-1"
source = {
    url = "git://github.com/gilzoide/nested",
    tag = "1.0.2",
}
description = {
    summary = "CLI for Nested data structure textual format",
    detailed = [[
CLI script for reading and rewritting Nested files.
May be used as a linter, formatter or converter for `require`able Lua scripts.
]],
    license = "Unlicense",
    labels = {
        "datastructure",
        "serialization"
    },
    maintainer = "gilzoide <gilzoide@gmail.com>",
    homepage = "https://github.com/gilzoide/nested",
}
dependencies = {
    "lua >= 5.1",
    "nested >= 1.0.2",
    "penlight",
    "stringstream >= 0.2.0",
}
build = {
    type = "builtin",
    install = {
        bin = {
            nested = "lua/main.lua"
        }
    }
}
