package = "bufio"
version = "0.5.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-bufio.git",
    tag = "v0.5.0",
}
description = {
    summary = "buffered I/O module.",
    homepage = "https://github.com/mah0x211/lua-bufio",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "errno >= 0.3.0",
    "isa >= 0.2",
    "metamodule >= 0.3",
}
build = {
    type = "builtin",
    modules = {
        ["bufio.reader"] = "lib/reader.lua",
        ["bufio.writer"] = "lib/writer.lua",
    }
}
