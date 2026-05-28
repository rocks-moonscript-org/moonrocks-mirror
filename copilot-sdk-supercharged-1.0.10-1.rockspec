package = "copilot-sdk-supercharged"
version = "1.0.10-1"
source = {
    url = "git+https://github.com/jeremiahjordanisaacson/copilot-sdk-supercharged.git",
    tag = "v1.0.10",
    dir = "copilot-sdk-supercharged/lua",
}
description = {
    summary = "Lua Supercharged SDK for the GitHub Copilot CLI",
    homepage = "https://github.com/jeremiahjordanisaacson/copilot-sdk-supercharged",
    license = "MIT",
}
dependencies = {
    "lua >= 5.1",
    "lua-cjson >= 2.1.0",
}
build = {
    type = "builtin",
    modules = {
        ["copilot.sdk_protocol_version"] = "copilot/sdk_protocol_version.lua",
        ["copilot.types"]                = "copilot/types.lua",
        ["copilot.json_rpc_client"]      = "copilot/json_rpc_client.lua",
        ["copilot.client"]               = "copilot/client.lua",
        ["copilot.session"]              = "copilot/session.lua",
        ["copilot.define_tool"]          = "copilot/define_tool.lua",
    },
}
