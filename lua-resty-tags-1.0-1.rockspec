package = "lua-resty-tags"
version = "1.0-1"
source = {
    url = "git://github.com/bungle/lua-resty-tags.git",
    branch = "v1.0"
}
description = {
    summary = "A small DSL for building HTML documents",
    detailed = "lua-tags-template is a csmall DSL for building HTML documents using simple Lua structures.",
    homepage = "https://github.com/bungle/lua-resty-tags",
    maintainer = "Aapo Talvensaari <aapo.talvensaari@gmail.com>",
    license = "BSD"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        ["resty.tags"] = "lib/resty/tags.lua"
    }
}
