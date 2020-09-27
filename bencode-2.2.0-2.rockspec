package = "bencode"
version = "2.2.0-2"

source = {
    url = "https://bitbucket-archive.softwareheritage.org/static/cd/cd306d52-db1e-420b-adf1-58dae40a70f3/attachments/lua-bencode-2.2.0.zip",
    md5 = "4d6d1e2e2f6d25d891e7ab85872f3b3b"
}

description = {
    summary  = "library for encoding and decoding bencoded data",
    detailed = "bencode is a module for encoding and decoding bencoded data for the bittorrent filesharing protocols",
    license  = "MIT/X11",
    homepage = "https://bitbucket-archive.softwareheritage.org/projects/wi/wilhelmy/lua-bencode.html"
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
