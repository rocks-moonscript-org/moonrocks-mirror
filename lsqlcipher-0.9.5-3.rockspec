-- rockspec_format = "3.0"
package = "lsqlcipher"
version = "0.9.5-3"
source = {
    url = "https://github.com/z7z8th/lsqlcipher/archive/0.9.5-3.zip",
    file = "lsqlcipher-0.9.5-3.zip"
}
description = {
    summary = "A binding for Lua to the SQLite3+SQLCipher database library",
    detailed = [[
        lsqlcipher is a thin wrapper around the public domain SQLite3+SQLCipher database engine. lsqlcipher is
        dynamically linked to sqlcipher. The statically linked alternative is lsqlciphercomplete.
        The lsqlcipher module supports the creation and manipulation of SQLite3+SQLCipher databases.
        Most sqlite3 functions are called via an object-oriented interface to either
        database or SQL statement objects.

        Functions added to lsqlite:
            sqlite:key(key[, dbname])
            sqlite:rekey(key[, dbname])
    ]],
    license = "MIT",
    homepage = "https://github.com/z7z8th/lsqlcipher",
    -- issues_url = "https://github.com/z7z8th/lsqlcipher/issues",
}
dependencies = {
    "lua >= 5.1, < 5.5",
    "sqlcipher"
}
-- external_dependencies = {
--     SQLCIPHER = {
--         header = "sqlcipher/sqlite3.h",
--         library = "sqlcipher",
--     }
-- }
build = {
    type = "builtin",
    modules = {
        lsqlcipher = {
            sources = { "lsqlcipher.c" },
            defines = {'LSQLITE_VERSION="0.9.5"', 'SQLITE_HAS_CODEC'},
            libraries = { "sqlcipher" },
            incdirs = {
                        "/opt/local/include/sqlcipher",
                        "/usr/local/include/sqlcipher",
                        -- "$(SQLCIPHER_INCDIR)"
                    },
            libdirs = {
                        "/opt/local/lib",
                        "/usr/local/lib",
                        -- "$(SQLCIPHER_LIBDIR)"
                    }
        },
    },
	copy_directories = { 'doc', 'examples' }
}
