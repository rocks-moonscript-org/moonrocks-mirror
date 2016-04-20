package = "bencode"
version = "2.2.0-1"

source = {
    url = "https://bitbucket.org/wilhelmy/lua-bencode/downloads/lua-bencode-2.2.0.zip",
    md5 = "4d6d1e2e2f6d25d891e7ab85872f3b3b"
}

description = {
    summary  = "library for encoding and decoding bencoded data",
    detailed = "bencode is a module for encoding and decoding bencoded data for the bittorrent filesharing protocols",
    license  = "MIT/X11",
    homepage = "https://bitbucket.org/wilhelmy/lua-bencode/"
}

dependencies = {
    "lua >= 5.1"
}

build = {
    type = "none",
    install = {
        lua = { "bencode.lua", "bencode-push.lua" }
    }
}
