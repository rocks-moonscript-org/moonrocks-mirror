package = "uuidx"
version = "1.0-1"
source = {
    url = "git://github.com/zs-soft/lua-resty-UUID_64_94.git",
    branch = "master"
}
description = {
    summary = "A extern lua package with uuid,support 128 bit and 256 bit",
    homepage = "https://github.com/zs-soft/lua-resty-UUID_64_94",
    maintainer = "zsteven2015@gmail.com",
    license = "MIT"
}
dependencies = {
    "lua >= 5.1, < 5.4"
}
build = {
    type = "make",
    install_variables = {
        INST_PREFIX="$(PREFIX)",
        INST_BINDIR="$(BINDIR)",
        INST_LIBDIR="$(LIBDIR)",
        INST_LUADIR="$(LUADIR)",
        INST_CONFDIR="$(CONFDIR)",
    },
}
