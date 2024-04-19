package = "form"
version = "0.5.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-form.git",
    tag = "v0.5.0",
}
description = {
    summary = "HTML form data processing module.",
    homepage = "https://github.com/mah0x211/lua-form",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "form-urlencoded ~> 0.2",
    "form-multipart ~> 0.4",
    "lauxhlib >= 0.6.0",
    "metamodule >= 0.4.0",
}
build = {
    type = "builtin",
    modules = {
        form = "form.lua",
    },
}
