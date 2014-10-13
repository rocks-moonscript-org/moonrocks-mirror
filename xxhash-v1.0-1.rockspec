package = "xxhash"
version = "v1.0-1"
source = {
    url = "git://github.com/jamesmarlowe/lua-xxhash.git"
}
description = {
    summary = "xxhash binding",
    detailed = [[]],
    homepage = "https://github.com/mah0x211/lua-xxhash", 
    license = "MIT/X11",
    maintainer = "Masatoshi Teruya"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        xxhash = {
            sources = { 
                "xxhash_bind.c",
                "xxhash.c"
            }
        }
    }
}

