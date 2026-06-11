package = "lua-resty-gd"
version = "2.3.3.3-1"

source = {
    url = "git://github.com/HanadaLee/lua-resty-gd.git",
    branch = "2.3.3.3",
}

description = {
    summary = "Lua FFI binding to libgd (GD Graphics Library) for OpenResty/LuaJIT",
    homepage = "https://github.com/HanadaLee/lua-resty-gd",
    license = "BSD 2-Clause",
    maintainer = "Hanada <im@hanada.info>",
    detailed = [[
        lua-resty-gd is a Lua FFI binding to libgd, the GD Graphics Library.
        It provides image creation, manipulation, and output functions for
        PNG, JPEG, GIF, WebP, TIFF, BMP, GD, GD2, WBMP, HEIF, AVIF, and TGA
        formats. Compatible with the lua-gd API and runs on OpenResty/LuaJIT.

        Requires libgd 2.3.x installed on the system.
    ]],
}

dependencies = {
    "lua >= 5.1",
}

build = {
    type = "builtin",
    modules = {
        ["resty.gd.init"]   = "lib/resty/gd/init.lua",
        ["resty.gd.base"]   = "lib/resty/gd/base.lua",
        ["resty.gd.image"]  = "lib/resty/gd/image.lua",
        ["resty.gd.libgd"]  = "lib/resty/gd/libgd.lua",
        ["resty.gd.util"]   = "lib/resty/gd/util.lua",
    },
    copy_directories = {},
}
