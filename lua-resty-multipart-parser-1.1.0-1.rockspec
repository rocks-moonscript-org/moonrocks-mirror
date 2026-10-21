rockspec_format = "3.0"
package = "lua-resty-multipart-parser"
version = "1.1.0-1"
source = {
    url = "git+https://github.com/HanadaLee/lua-resty-multipart-parser.git",
    tag = "1.1.0",
}
description = {
    summary = "Multipart data parser for OpenResty/Lua",
    detailed = [[
        Parses complete multipart messages, including binary payloads, with
        validated MIME headers, boundary delimiters, and configurable limits.
    ]],
    homepage = "https://github.com/HanadaLee/lua-resty-multipart-parser",
    license = "BSD-2-Clause",
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        ["resty.multipart.parser"] = "lib/resty/multipart/parser.lua",
    },
}
