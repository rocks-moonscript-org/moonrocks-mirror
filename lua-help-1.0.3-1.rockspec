package = "lua-help"
version = "1.0.3-1"
source = {
    url = "git+https://gitlab.com/mambrus/lua-help.git"
}
description = {
    summary = "Lua version-specific reference help module.",
    detailed = [[
        Generated Lua help-text from official version specific reference manual
        without file-system dependency. Text is indexed and stored in a zlib
        C-array in .text section (RO). Emphasis is highly embedded targets or
        security constrained VM's that either disable file system access or
        don't have one.
    ]],
    homepage = "https://gitlab.com/mambrus/lua-help",
    license = "MIT"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "cmake",
    variables = {
        GEN_VERBOSE = "no",
        DSO_VERSION_SPECIFIC = "OFF",
        LUA = "$(LUA)",
        LUA_INCLUDE_DIR = "$(LUA_INCDIR)",
        LUA_LIBRARY_DIR = "$(LUA_DIR)/lib",
        CMAKE_INSTALL_PREFIX = "$(PREFIX)",
    }
}
