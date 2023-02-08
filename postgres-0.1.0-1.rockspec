package = "postgres"
version = "0.1.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-postgres.git",
    tag = "v0.1.0",
}
description = {
    summary = "PostgreSQL client for lua",
    homepage = "https://github.com/mah0x211/lua-postgres",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "gpoll >= 0.2.0",
    "io-wait >= 0.1.0",
    "isa >= 0.3.0",
    "libpq >= 0.1.0",
    "metamodule >= 0.4.0",
    "unpack >= 0.1.0",
}
build = {
    type = "builtin",
    modules = {
        ["postgres"] = "postgres.lua",
        ["postgres.connection"] = "lib/connection.lua",
        ["postgres.pool"] = "lib/pool.lua",
        ["postgres.result"] = "lib/result.lua",
        ["postgres.rows"] = "lib/rows.lua",
        ["postgres.rows.single"] = "lib/rows/single.lua",
    },
}
