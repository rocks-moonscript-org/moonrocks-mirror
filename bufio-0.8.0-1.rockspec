package = "bufio"
version = "0.8.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-bufio.git",
    tag = "v0.8.0",
}
description = {
    summary = "buffered I/O module.",
    homepage = "https://github.com/mah0x211/lua-bufio",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "error >= 0.12.0",
    "errno >= 0.3.0",
    "lauxhlib >= 0.6.1",
    "metamodule >= 0.3",
}
build = {
    type = "builtin",
    modules = {
        ["bufio.reader"] = "lib/reader.lua",
        ["bufio.writer"] = "lib/writer.lua",
    },
}

