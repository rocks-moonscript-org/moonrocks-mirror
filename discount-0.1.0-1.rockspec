package = "discount"
version = "0.1.0-1"
supported_platforms = {"unix"}

description = {
    summary = "Lua bindings for the Discount Markdown library",
    homepage = "https://github.com/craigbarnes/lua-discount",
    license = "ISC"
}

source = {
    url = "https://github.com/craigbarnes/lua-discount/releases/download/0.1.0/lua-discount-0.1.0.tar.gz",
    md5 = 'c536081f804d4a1c1479d77b6e3ed44d'
}

dependencies = {
    "lua >= 5.1"
}

external_dependencies = {
    DISCOUNT = {
        library = "markdown",
        header = "mkdio.h"
    }
}

build = {
    type = "builtin",
    modules = {
        discount = {
            sources = {"discount.c"},
            libraries = {"markdown"},
        }
    }
}
