rockspec_format = "3.0"
package = "net-http"
version = "0.8.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-net-http.git",
    tag = "v0.8.0",
}
description = {
    summary = "http module for lua",
    homepage = "https://github.com/mah0x211/lua-net-http",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "base64mix >= 1.0.0",
    "basedir >= 0.5.1",
    "errno >= 0.3.0",
    "bufio >= 0.9.0",
    "error >= 0.12.0",
    "form ~> 0.5.0",
    "fstat >= 0.2.3",
    "io-fopen >= 0.1.3",
    "io-pread >= 0.1.0",
    "net >= 0.38.0",
    "metamodule >= 0.4",
    "mime >= 0.1.0",
    "lauxhlib >= 0.6.0",
    "loadchunk >= 0.1.2",
    "plut >= 0.6.0",
    "realpath >= 0.4.0",
    "regex >= 0.2.0",
    "string-capitalize >= 0.2.0",
    "string-natcmp >= 0.1.0",
    "string-split >= 0.3.0",
    "string-trim >= 0.2.0",
    "table-flatten >= 0.4.0",
    "tointeger >= 0.1.0",
    "url >= 2.1.0",
    "yyjson >= 0.10.0",
}
build_dependencies = {
    "luarocks-build-hooks",
}
build = {
    type = 'hooks',
    before_build = "$(extra-vars)",
    -- Extra values to append to existing variables
    extra_variables = {
        CFLAGS = "-Wall -Wno-trigraphs -Wmissing-field-initializers -Wreturn-type -Wmissing-braces -Wparentheses -Wno-switch -Wunused-function -Wunused-label -Wunused-parameter -Wunused-variable -Wunused-value -Wuninitialized -Wunknown-pragmas -Wshadow -Wsign-compare",
    },
    conditional_variables = {
        NET_HTTP_COVERAGE = {
            CFLAGS = "--coverage",
            LIBFLAG = "--coverage",
        },
    },
    modules = {
        ["net.http.connection"] = "lib/connection.lua",
        ["net.http.content"] = "lib/content.lua",
        ["net.http.content.chunked"] = "lib/content/chunked.lua",
        ["net.http.date"] = "lib/date.lua",
        ["net.http.fetch"] = "lib/fetch.lua",
        ["net.http.form"] = "lib/form.lua",
        ["net.http.header"] = "lib/header.lua",
        ["net.http.message"] = "lib/message.lua",
        ["net.http.message.request"] = "lib/message/request.lua",
        ["net.http.message.response"] = "lib/message/response.lua",
        ["net.http.query"] = "lib/query.lua",
        ["net.http.reader"] = "lib/reader.lua",
        ["net.http.responder"] = "lib/responder.lua",
        ["net.http.server"] = "lib/server.lua",
        ["net.http.status"] = "lib/status.lua",
        ["net.http.writer"] = "lib/writer.lua",
        ["net.http.parse"] = {
            sources = {
                "src/parse.c",
                "src/hwire.c",
            },
        },
        ["net.http.router"] = "lib/router.lua",
        ["net.http.router.compiler"] = "lib/router/compiler.lua",
        ["net.http.router.loadfenv"] = "lib/router/loadfenv.lua",
        ["net.http.router.parse"] = "lib/router/parse.lua",
    },
}
