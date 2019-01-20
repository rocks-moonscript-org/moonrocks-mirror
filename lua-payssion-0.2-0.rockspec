package = "lua-payssion"
version = "0.2-0"

source = {
    url = "git://github.com/paragasu/lua-payssion.git",
    tag = "0.2-0"
}

description = {
    summary = "Lua api for payssion payment gateway",
    homepage = "http://github.com/paragasu/lua-payssion",
    maintainer = "Jeffry L. <paragasu@gmail.com>",
    license = "MIT"
}

dependencies = {
    "lua = 5.1",
    "lua-cjson",
    "lua-resty-http",
    "md5"
}

build = {
    type = "builtin",
    modules = {
        ["payssion"] = "payssion.lua",
    }
}
