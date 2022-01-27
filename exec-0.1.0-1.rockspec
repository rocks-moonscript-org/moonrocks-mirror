package = "exec"
version = "0.1.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-exec.git",
    tag = "v0.1.0",
}
description = {
    summary = "execute a file",
    homepage = "https://github.com/mah0x211/lua-exec",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga"
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = 'builtin',
    modules = {
        ['exec'] = 'lib/exec.lua',
        ['exec.syscall'] = {
            sources = { 'src/syscall.c' }
        },
    }
}
