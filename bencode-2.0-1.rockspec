package = "bencode"
version = "2.0-1"

source = {
    url = "https://bitbucket.org/wilhelmy/lua-bencode/downloads/lua-bencode-2.0.zip",
    md5 = "45702f2ba6725247ce62a32c2381e3ca"
}

description = {
    summary  = "library for encoding and decoding bencoded data",
    detailed = "bencode is a module for encoding and decoding bencoded data for the bittorrent filesharing protocols",
    license  = "Public Domain",
    homepage = "http://bitbucket.org/wilhelmy/lua-bencode/"
}

dependencies = {
    "lua >= 5.1"
}

build = {
    type = "none",
    install = {
        lua = { "bencode.lua" }
    }
}
