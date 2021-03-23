package = "sqlcipher"
version = "4.4.2-2"
source = {
    url = "https://github.com/sqlcipher/sqlcipher/archive/v4.4.2.zip",
    -- url = 'file:///Users/tmp/src/sqlcipher-4.4.2.zip',
    file = "sqlcipher-4.4.2.zip"
}
description = {
    summary = "SQLCipher is a security extension to SQLite3 database library",
    detailed = [[
        SQLCipher is an open source library that provides transparent, secure 256-bit AES encryption of SQLite database files.
    ]],
    license = "MIT",
    homepage = "https://www.zetetic.net/sqlcipher"
}

build = {
    type = "command",
    modules = {
        lsqlcipher = {
        },
    },
    build_command = './configure $(SQLCIPHER_CONFIGURE) --disable-tcl --enable-tempstore=yes CFLAGS="-DSQLITE_HAS_CODEC -I/usr/local/openresty/openssl/include -I/usr/local/include -I/opt/local/include" LDFLAGS="-Wl,-rpath=/usr/local/openresty/openssl/lib -L/opt/local/lib -L/usr/local/openresty/openssl/lib -L/usr/local/lib -L/opt/local/lib -lcrypto" && make',
    install_command = "make install",
    platforms = {
        macosx = {
            build_command = './configure $(SQLCIPHER_CONFIGURE) --disable-tcl --enable-tempstore=yes CFLAGS="-DSQLITE_HAS_CODEC -I/usr/local/openresty/openssl/include -I/usr/local/include -I/opt/local/include" LDFLAGS="-L/opt/local/lib -L/usr/local/openresty/openssl/lib -L/usr/local/lib -L/opt/local/lib -lcrypto" && make'
        }
    }

}