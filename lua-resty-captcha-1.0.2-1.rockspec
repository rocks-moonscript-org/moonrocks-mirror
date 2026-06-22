package = "lua-resty-captcha"
version = "1.0.2-1"

source = {
    url = "git://github.com/HanadaLee/lua-resty-captcha.git",
    tag = "1.0.2",
}

description = {
    summary = "A simple captcha image generator for OpenResty",
    detailed = [[
        lua-resty-captcha is a captcha image generator based on libgd,
        ported to lua-resty-gd for use with OpenResty.
    ]],
    homepage = "https://github.com/HanadaLee/lua-resty-captcha",
    license = "MIT",
}

dependencies = {
    "lua >= 5.1",
    "lua-resty-gd >= 2.3.3.4",
}

build = {
    type = "builtin",
    modules = {
        ["resty.captcha"] = "lib/resty/captcha.lua",
    },
}
