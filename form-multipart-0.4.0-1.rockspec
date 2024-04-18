package = "form-multipart"
version = "0.4.0-1"
source = {
    url = "git+https://github.com/mah0x211/lua-form-multipart.git",
    tag = "v0.4.0",
}
description = {
    summary = "encode/decode the multipart/form-data format.",
    homepage = "https://github.com/mah0x211/lua-form-multipart",
    license = "MIT/X11",
    maintainer = "Masatoshi Fukunaga",
}
dependencies = {
    "lua >= 5.1",
    "error >= 0.8.0",
    "gcfn >= 0.3.0",
    "lauxhlib >= 0.6.0",
    "mkstemp >= 0.2.0",
}
build = {
    type = "builtin",
    modules = {
        ["form.multipart"] = "lib/multipart.lua",
    },
}
