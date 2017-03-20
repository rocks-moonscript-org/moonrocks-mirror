package = "lua-recaptcha"
version = "0.1-0"

source = {
    url = "git://github.com/paragasu/lua-recaptcha.git",
    tag = "0.1-0"
}

description = {
    summary = "Lua api for twilio",
    homepage = "http://github.com/paragasu/lua-recaptcha",
    maintainer = "Jeffry L. <paragasu@gmail.com>",
    license = "MIT"
}

dependencies = {
    "lua = 5.1",
    "lua-requests"
}

build = {
    type = "builtin",
    modules = {
        ["recaptcha"] = "recaptcha.lua",
    }
}
