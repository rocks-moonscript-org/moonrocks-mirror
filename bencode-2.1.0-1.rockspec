package = "bencode"
version = "2.1.0-1"

source = {
    url = "https://bitbucket.org/wilhelmy/lua-bencode/downloads/lua-bencode-2.1.0.zip",
    md5 = "72dc0f02de5c02154d5001a406ed39f4"
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
    type = "builtin",
    modules = {
        bencode = "bencode.lua",
    }
}