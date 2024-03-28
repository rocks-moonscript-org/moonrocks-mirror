package = "io-writer"
version = "0.3.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-io-writer.git",
    tag = "v0.3.0",
}
description = {
    summary = "A writer that writes data to a file or file descriptor.",
    homepage = "https://github.com/mah0x211/lua-io-writer",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "errno >= 0.5",
    "gpoll >= 0.9.0",
    "io-isfile >= 0.1.0",
    "io-fopen >= 0.1.3",
    "io-fileno >= 0.1.0",
    "io-writev >= 0.1.0",
    "metamodule >= 0.5.0",
    "time-clock >= 0.4.0",
}
build = {
    type = "builtin",
    modules = {
        ["io.writer"] = "writer.lua",
    },
}
