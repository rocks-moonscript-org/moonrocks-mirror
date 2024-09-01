package = "lua-ctables"
version = "1.0.2-1"
source = {
    url = "git+https://gitlab.com/mambrus/lua-ctables.git"
}
description = {
    summary = "Bridge between C-arrays and Lua multi-dimensional tables.",
    detailed = [[
        Library to covert between Lua tables and C-arrays
        * Lua-tables of any dimension
        * C-arrays of any type
    ]],
    homepage = "https://gitlab.com/mambrus/lua-ctables",
    license = "MIT"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "cmake",
    variables = {
        DSO_VERSION_SPECIFIC = "OFF",
        LUA = "$(LUA)",
        LUA_INCLUDE_DIR = "$(LUA_INCDIR)",
        LUA_LIBRARY_DIR = "$(LUA_DIR)/lib",
        CMAKE_INSTALL_PREFIX = "$(PREFIX)",
    }
}
