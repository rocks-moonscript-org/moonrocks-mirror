package = "gonapps-url-query-parser"
version = "1.0-3"

source = {
    url = "git://github.com/gonapps/gonapps-lua-url-query-parser",
    tag = "v1.0-3"
}

description = {
    summary = "An url query parser for lua.",
    detailed = [[]],
    homepage = "http://github.com/gonapps/gonapps-lua-url-query-parser",
    license = "Mozilla Public License 2.0"
}

dependencies = {
    "lua >= 5.1",
    "gonapps-url-decoder >= 1.1-2"
}

build = {
    type = "builtin",
    modules = {
        ["gonapps.url.query.parser"] = "src/gonapps/url/query/parser.lua"
    }
}
