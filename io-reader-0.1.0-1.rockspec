package = "io-reader"
version = "0.1.0-1"
source = {
    url = "git+https://github.com/mah0x211/io-reader.git",
    tag = "v0.1.0",
}
description = {
    summary = "A reader that reads data from a file or file descriptor.",
    homepage = "https://github.com/mah0x211/io-reader",
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
    "io-readn >= 0.1.0",
    "metamodule >= 0.5.0",
}
build = {
    type = "builtin",
    modules = {
        ["io.reader"] = "reader.lua",
    },
}
