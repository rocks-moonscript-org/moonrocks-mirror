package = "lua-ctables"
version = "1.0.6-1"
source = {
    url = "git+https://gitlab.com/mambrus/lua-ctables.git"
}
description = {
    summary = "Bridge between C-arrays/buffers and Lua multi-dimensional tables.",
    detailed = [[
        Module to transfer/convert between multi-dimensional Lua-tables and
        C-arrays (void* ptr)
        * Lua-tables of any dimension
        * C-arrays/buffers of any type

        C-buffers of any type means module can be used for IPC for example
        shared/file-mapped memory. If layout matters this feature is limited
        to IPC where both sides interpret long double and integers the same.

        Included is a linear algebra Vector/Matrix class capable of non
        accelerated linear algebra using familiar operators. The class
        primary use-case is to test/verify the module.
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
