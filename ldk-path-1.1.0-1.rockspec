rockspec_format = '3.0'

package = 'ldk-path'
version = '1.1.0-1'
source = {
    url = 'git://github.com/luadevkit/ldk-path.git',
    branch = '1.1.0'
}
supported_platforms = {
    'windows',
    'unix'
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
    local sources = {'csrc/path.c', 'csrc/cbuf.c'}
    if name == 'windows' then
        sources[#sources + 1] = 'csrc/error_win.c'
        sources[#sources + 1] = 'csrc/path_win.c'
    elseif name == 'unix' then
        sources[#sources + 1] = 'csrc/error_unix.c'
        sources[#sources + 1] = 'csrc/path_unix.c'
    end
    return {
        modules = {
            ['ldk.path'] = sources
        }
    }
end

build = {
    platforms = {
        windows = make_platform 'windows',
        unix = make_platform 'unix'
    }
}
