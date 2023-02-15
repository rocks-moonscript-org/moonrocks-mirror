package = "afl-lua"
version = "0.1.0-1"
source = {
    url = "git+https://github.com/ligurio/afl-lua",
	tag = "0.1.0",
}

description = {
    summary = "A coverage-guided Lua fuzzer based on with American Fuzzy Lop",
    homepage = "https://github.com/ligurio/afl-lua",
    maintainer = "Sergey Bronnikov <estetus@gmail.com>",
    license = "ISC",
}

dependencies = {
    "lua >= 5.1",
}

build = {
    type = "cmake",
    -- https://github.com/luarocks/luarocks/wiki/Config-file-format#variables
    variables = {
        CMAKE_BINDIR = "$(BINDIR)",
        CMAKE_LUADIR = "$(LUADIR)",
        CMAKE_BUILD_TYPE = "RelWithDebInfo",
    },
}
