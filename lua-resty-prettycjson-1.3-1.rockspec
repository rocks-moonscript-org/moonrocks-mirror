package = "lua-resty-prettycjson"
version = "1.3-1"
source = {
    url = "git://github.com/bungle/lua-resty-prettycjson.git",
    branch = "v1.3"
}
description = {
    summary = "JSON Pretty Formatter for Lua cJSON",
    detailed = "lua-resty-prettycjson is a JSON Pretty Formatter for Lua cJSON.",
    homepage = "https://github.com/bungle/lua-resty-prettycjson",
    maintainer = "Aapo Talvensaari <aapo.talvensaari@gmail.com>",
    license = "BSD"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        ["resty.prettycjson"] = "lib/resty/prettycjson.lua"
    }
}
