rockspec_format = '3.0'

package = 'ldk-path'
version = '0.1.0-1'
source = {
    url = 'git://github.com/luadevkit/ldk-path.git',
    branch = '0.1.0'
}
supported_platforms = {
    'linux',
    'macosx',
    'windows'
}
description = {
    summary = 'LDK - function arguments type checking',
    license = 'MIT',
    maintainer = 'info@luadevk.it'
}
dependencies = {
    'lua >= 5.3'
}

local function make_platform(name)
    local modules = {
        ['ldk.path'] = {
            'csrc/path.c',
            'csrc/cbuf.c',
        }
    }
    local function append(t, x)
        t[#t + 1] = x
    end

    if name == 'windows' then
        append(modules['ldk.path'], 'csrc/error_win.c')
        append(modules['ldk.path'], 'csrc/path_win.c')
    elseif name == 'unix' then
        append(modules['ldk.path'], 'csrc/error_unix.c')
        append(modules['ldk.path'], 'csrc/path_unix.c')
    end

    return {modules = modules}
end

build = {
    platforms = {
        windows = make_platform 'windows',
        unix = make_platform 'unix'
    }
}
