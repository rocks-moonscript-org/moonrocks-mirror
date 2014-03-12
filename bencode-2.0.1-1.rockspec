package = "bencode"
version = "2.0.1-1"

source = {
    url = "https://bitbucket.org/wilhelmy/lua-bencode/downloads/lua-bencode-2.0.1.zip",
    md5 = "5ce0e3e54491c8f1d3e202a067c9e4da"
}

description = {
    summary  = "library for encoding and decoding bencoded data",
    detailed = "bencode is a module for encoding and decoding bencoded data for the bittorrent filesharing protocols",
    license  = "MIT/X11",
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
