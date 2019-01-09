package = "lua-i18n"
version = "1.0.0-1"
source = {
    url = "git+https://github.com/sundream/lua-i18n",
    tag = "v1.0.0"
}
description = {
    summary = "do internationalization in your program and implemented by a single file",
    homepage = "https://github.com/sundream/lua-i18n",
    license = "MIT"
}
dependencies = {
     "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        i18n = "i18n.lua"
    }
}
