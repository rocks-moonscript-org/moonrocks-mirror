rockspec_format = '3.0'

package = 'ldk-hash'
version = '0.1.0-1'
source = {
    url = 'git://github.com/luadevkit/ldk-hash.git',
    branch = '0.1.0'
}
supported_platforms = {
    'linux',
    'macosx',
    'windows'
}
description = {
    summary = 'LDK - Hash code for Lua values',
    license = 'MIT',
    maintainer = 'info@luadevk.it'
}
dependencies = {
    'lua >= 5.3'
}
build = {
    modules = {
        ['ldk.hash'] = 'csrc/hash.c'
    }
}
