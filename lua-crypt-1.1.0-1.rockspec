package = "lua-crypt"
version = "1.1.0-1"

source = {
    url = "https://buffering.party/software/lua-crypt/lua-crypt-1.1.0.tar.gz",
}

description = {
    summary = "https://buffering.party/software/lua-crypt/",
    homepage = "https://github.com/jprjr/lua-crypt",
    maintainer = "John Regan <john@jrjrtech.com>",
    license = "MIT"
}

dependencies = {
    "lua",
}

build = {
    type = "builtin",
    modules = {
        ['crypt'] = 'crypt.lua',
        ['crypt.core'] = {
            sources = {
              'src/base64.c',
              'src/crypt.c',
              'src/crypt_blowfish.c',
              'src/crypt_md5.c',
              'src/crypt_sha256.c',
              'src/crypt_sha512.c',
              'src/luasha.c',
              'src/luassha.c',
              'src/sha1.c',
            },
        }
    }
}

