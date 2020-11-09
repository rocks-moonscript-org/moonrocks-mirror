rockspec_format = "3.0"
package = "tonos-client"
version = "1.0.0-0"
source = {
    url = "git://github.com/serge-medvedev/tonos-client-lua",
    tag = "1.0.0"
}
description = {
    summary = "Lua bindings to TON OS SDK's Core Client Library",
    license = "MIT",
    labels = { "ton", "tonos" }
}
dependencies = {
    "lua ~> 5.1",
    "dkjson >= 2.5"
}
build_dependencies = {
    "busted"
}
test = {
    type = "busted",
    flags = { "--run", "free" }
}
build = {
    type = "builtin",
    modules = {
        ["tonos.client"] = "build/generated/client.lua",
        tonosclua = {
            sources = { "src/tonosclua/tonosclua.c" },
            incdirs = { "src/tonosclua/include" },
            libraries = { "ton_client" }
        }
    }
}

