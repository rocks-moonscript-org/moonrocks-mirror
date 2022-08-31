package = "lua-hashings-and-nums"
version = "1.0.3-1"

source = {
    url = "git+https://github.com/epicfilemcnulty/lua-hashings-and-nums.git",
    tag = "v1.0.3"
}

description = {
    summary    = "Lua hashing library providing a variety of cryptographic hashs and related hash function",
    homepage   = "https://github.com/user-none/lua-hashings.git",
    license    = "MIT/X11",
    maintainer = "John Schember <john@nachtimwald.com>",
    detailed   = [[
Lua-hashings provides a variety of cryptographically secure hashes and
hash related functions.

Hashes:

* adler32
* blake2b
* blake2s
* crc32
* md5
* ripemd160
* sha1
* sha256
* sha3_256
* sha3_512
* sha512
* whirlpool

Hash functions:

* hmac
* pbkdf2
]]
}

dependencies = {
    "lua >= 5.3",
}

build = {
    type    = "builtin",
    modules = {
        ["nums"]               = "nums/init.lua",
        ["nums.bn"]            = "nums/bn.lua",
        ["nums.uintn"]         = "nums/uintn.lua",
        ["nums.uintb"]         = "nums/uintb.lua",
        ["hashings"]           = "hashings/init.lua",
        ["hashings.adler32"]   = "hashings/adler32.lua",
        ["hashings.blake2b"]   = "hashings/blake2b.lua",
        ["hashings.blake2s"]   = "hashings/blake2s.lua",
        ["hashings.crc32"]     = "hashings/crc32.lua",
        ["hashings.keccak"]    = "hashings/keccak.lua",
        ["hashings.md5"]       = "hashings/md5.lua",
        ["hashings.ripemd160"] = "hashings/ripemd160.lua",
        ["hashings.sha1"]      = "hashings/sha1.lua",
        ["hashings.sha256"]    = "hashings/sha256.lua",
        ["hashings.sha3_256"]  = "hashings/sha3_256.lua",
        ["hashings.sha3_512"]  = "hashings/sha3_512.lua",
        ["hashings.sha512"]    = "hashings/sha512.lua",
        ["hashings.whirlpool"] = "hashings/whirlpool.lua",

        ["hashings.hmac"]      = "hashings/hmac.lua",
        ["hashings.pbkdf2"]    = "hashings/pbkdf2.lua"
    }
}
