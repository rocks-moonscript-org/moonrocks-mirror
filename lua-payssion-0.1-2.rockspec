package = "lua-payssion"
version = "0.1-2"

source = {
    url = "git://github.com/paragasu/lua-payssion.git",
    tag = "0.1-2"
}

description = {
    summary = "Lua api for payssion payment gateway",
    homepage = "http://github.com/paragasu/lua-payssion",
    maintainer = "Jeffry L. <paragasu@gmail.com>",
    license = "MIT"
}

dependencies = {
    "lua = 5.1",
    "lua-requests",
    "md5"
}

build = {
    type = "builtin",
    modules = {
        ["payssion"] = "payssion.lua",
    }
}
