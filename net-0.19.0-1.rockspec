package = "net"
version = "0.19.0-1"
source = {
    url = "git://github.com/mah0x211/lua-net.git",
    tag = "v0.19.0"
}
description = {
    summary = "net module",
    homepage = "https://github.com/mah0x211/lua-net",
    license = "MIT/X11",
    maintainer = "Masatoshi Teruya"
}
dependencies = {
    "lua >= 5.1",
    "halo >= 1.1.8",
    "libtls >= 2.5.4",
    "llsocket >= 0.6.1"
}
build = {
    type = "builtin",
    modules = {
        net = "net.lua",
        ['net.poll'] = "lib/poll.lua",
        ['net.unix'] = "lib/unix.lua",
        ['net.stream'] = "lib/stream.lua",
        ['net.stream.inet'] = "lib/stream/inet.lua",
        ['net.stream.unix'] = "lib/stream/unix.lua",
        ['net.dgram'] = "lib/dgram.lua",
        ['net.dgram.inet'] = "lib/dgram/inet.lua",
        ['net.dgram.unix'] = "lib/dgram/unix.lua"
    }
}

