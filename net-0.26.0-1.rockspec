package = "net"
version = "0.26.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-net.git",
    tag = "v0.26.0"
}
description = {
    summary = "net module",
    homepage = "https://github.com/mah0x211/lua-net",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga"
}
dependencies = {
    "lua >= 5.1",
    "metamodule >= 0.2.1",
    "llsocket >= 0.12.0",
    "isa >= 0.1.0",
}
build = {
    type = "builtin",
    modules = {
        net = "net.lua",
        ['net.addrinfo'] = "lib/addrinfo.lua",
        ['net.cmsghdr'] = "lib/cmsghdr.lua",
        ['net.device'] = "lib/device.lua",
        ['net.env'] = "lib/env.lua",
        ['net.msghdr'] = "lib/msghdr.lua",
        ['net.socket'] = "lib/socket.lua",
        ['net.poll'] = "lib/poll.lua",
        ['net.unix'] = "lib/unix.lua",
        ['net.stream'] = "lib/stream.lua",
        ['net.stream.inet'] = "lib/stream/inet.lua",
        ['net.stream.unix'] = "lib/stream/unix.lua",
        ['net.dgram'] = "lib/dgram.lua",
        ['net.dgram.inet'] = "lib/dgram/inet.lua",
        ['net.dgram.unix'] = "lib/dgram/unix.lua",
        ['net.syscall'] = {
            sources = { "src/syscall.c" }
        }
    }
}
