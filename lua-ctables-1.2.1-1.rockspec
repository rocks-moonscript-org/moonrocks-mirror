package = "lua-ctables"
version = "1.2.1-1"
source = {
    url = "git+https://gitlab.com/mambrus/lua-ctables.git"
}
description = {
    summary = "Bridge between C-arrays/buffers and Lua multi-dimensional tables.",
    detailed = [[
        Module map or serialise multi-dimensional Lua-tables and (primarily)
        numerical C-arrays (void* ptr)

        * Lua-tables of any dimension
        * C-arrays/buffers of any (numerical) type
        * Non numerical can be managed, but treated as blobs (i.e. not
          vector-algebra supported directly)

        C-buffers of any type means module can be used for IPC for example
        shared/file-mapped memory. If layout matters this feature is limited
        to IPC where both sides interpret the types and content in the
        ctable-leafs the same.

        Included is a linear algebra Vector/Matrix class capable of non
        accelerated linear algebra using familiar operators. The class
        primary use-case is to test/verify the module.
    ]],
    homepage = "https://gitlab.com/mambrus/lua-ctables",
    license = "MIT"
}
dependencies = {
    "lua >= 5.2"
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
