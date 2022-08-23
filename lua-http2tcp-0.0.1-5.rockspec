package = "lua-http2tcp"
version = "0.0.1-5"
supported_platforms = {"linux", "macosx"}

source = {
    url = "git://github.com/mufanh/lua-http2tcp",
    tag = "v0.0.1-5",
}

description = {
    summary = "tcp服务代理，支持将http报文转为特定格式的tcp报文转发.",
    homepage = "https://github.com/mufanh/lua-http2tcp",
    license = "Apache License 2.0",
    maintainer = "mufanh <mufan.huang@qq.com>"
}

dependencies = {
    "api7-lua-tinyyaml = 0.4.2",
    "lua-resty-ngxvar = 0.5.2",
    "luafilesystem = 1.7.0-2",
}

build = {
    type = "builtin",
    modules = {
        ["http2tcp.pkg.ctx"] = "http2tcp/pkg/ctx.lua",
        ["http2tcp.pkg.io"] = "http2tcp/pkg/io.lua",
        ["http2tcp.pkg.json"] = "http2tcp/pkg/json.lua",
        ["http2tcp.pkg.log"] = "http2tcp/pkg/log.lua",
        ["http2tcp.pkg.request"] = "http2tcp/pkg/request.lua",
        ["http2tcp.pkg.response"] = "http2tcp/pkg/response.lua",
        ["http2tcp.pkg.string"] = "http2tcp/pkg/string.lua",
        ["http2tcp.pkg.table"] = "http2tcp/pkg/table.lua",

        ["http2tcp.core"] = "http2tcp/core.lua",
        ["http2tcp.proxy"] = "http2tcp/proxy.lua",
        ["http2tcp.version"] = "http2tcp/version.lua",
    }
}
