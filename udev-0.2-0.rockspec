package = "udev"
version = "0.2-0"
source = {
        url = 'https://github.com/dodo/lua-udev/archive/0.2.tar.gz'
}
description = {
        summary  = "udev bindings for Lua",
        homepage = "https://github.com/dodo/lua-udev",
        license  = "MIT"
}
dependencies = {
        "lua >= 5.1"
}
external_dependencies = {
        UDEV = {
                header = "libudev.h"
        }
}
build = {
        type = "builtin",
        modules = {
                udev = {
                        sources = {"lua-udev.c"},
                        libraries = {"udev"},
                        incdirs = {"$(UDEV_INCDIR)"},
                        libdirs = {"$(UDEV_LIBDIR)"}
                }
        }
}