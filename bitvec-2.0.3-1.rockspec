rockspec_format = "3.0"
package = "bitvec"
version = "2.0.3-1"
source = {
    url = "git+https://github.com/mah0x211/lua-bitvec.git",
    tag = "v2.0.3"
}
description = {
    summary = "bit-vector module",
    homepage = "https://github.com/mah0x211/lua-bitvec",
    license = "MIT/X11",
    maintainer = "Masatoshi Teruya"
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        bitvec = {
            sources = {
                "src/bitvec.c",
            }
        }
    }
}
