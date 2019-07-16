rockspec_format = '3.0'

package = 'ldk-sleep'
version = '0.1.0-1'
source = {
    url = 'git://github.com/luadevkit/ldk-sleep.git',
    branch = '0.1.0'
}
supported_platforms = {
    'linux',
    'macosx',
    'windows'
}
description = {
    summary = 'LDK - Sleep function',
    license = 'MIT',
    maintainer = 'info@luadevk.it'
}
dependencies = {
    'lua >= 5.3'
}
local function make_platform(name)
    local modules = {
        ['ldk.sleep'] = {
            'csrc/sleep.c',
        }
    }
    local function append(t, x)
        t[#t + 1] = x
    end

    if name == 'windows' then
        append(modules['ldk.sleep'], 'csrc/sleep_win.c')
    elseif name == 'unix' then
        append(modules['ldk.sleep'], 'csrc/sleep_unix.c')
    end

    return {modules = modules}
end

build = {
    platforms = {
        windows = make_platform 'windows',
        unix = make_platform 'unix'
    }
}
