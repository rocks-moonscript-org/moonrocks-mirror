-- voicetel-2.2.17-1.rockspec
package = "voicetel"
version = "2.2.17-1"

source = {
    url = "git+https://github.com/voicetel/lua-sdk.git",
    tag = "v2.2.17",
}

description = {
    summary  = "Official Lua SDK for the VoiceTel REST API (v2.2.17).",
    detailed = [[
The official Lua client library for the VoiceTel REST API. Designed for
FreeSWITCH mod_lua scripting on production switches, with a LuaSocket
fallback so the same library works outside FreeSWITCH for tests and tools.

Wraps all 10 resource groups and 79 operations of the v2.2.17 API:
Account, ACL, Authentication, e911, Gateways, iNumbering, Lookups,
Messaging, Numbers, Support. Includes automatic 429/5xx retry with
Retry-After honoring, structured error types, and the standard
{ status, data } envelope stripped from every response.
]],
    homepage = "https://github.com/voicetel/lua-sdk",
    license  = "MIT",
    maintainer = "VoiceTel <support@voicetel.com>",
}

dependencies = {
    "lua >= 5.2",
    "lua-cjson >= 2.1.0",
    -- Used by the non-FreeSWITCH fallback HTTP transport (with TLS peer +
    -- hostname verification). Not needed inside FreeSWITCH mod_lua, where
    -- freeswitch.Curl is used instead.
    "luasocket >= 3.0",
    "luasec >= 1.0",
}

build = {
    type    = "builtin",
    modules = {
        ["voicetel"]                          = "voicetel.lua",
        ["voicetel.version"]                  = "voicetel/version.lua",
        ["voicetel.errors"]                   = "voicetel/errors.lua",
        ["voicetel.json"]                     = "voicetel/json.lua",
        ["voicetel.http"]                     = "voicetel/http.lua",
        ["voicetel.transport"]                = "voicetel/transport.lua",
        ["voicetel.resources.account"]        = "voicetel/resources/account.lua",
        ["voicetel.resources.acl"]            = "voicetel/resources/acl.lua",
        ["voicetel.resources.authentication"] = "voicetel/resources/authentication.lua",
        ["voicetel.resources.e911"]           = "voicetel/resources/e911.lua",
        ["voicetel.resources.gateways"]       = "voicetel/resources/gateways.lua",
        ["voicetel.resources.inumbering"]     = "voicetel/resources/inumbering.lua",
        ["voicetel.resources.lookups"]        = "voicetel/resources/lookups.lua",
        ["voicetel.resources.messaging"]      = "voicetel/resources/messaging.lua",
        ["voicetel.resources.numbers"]        = "voicetel/resources/numbers.lua",
        ["voicetel.resources.support"]        = "voicetel/resources/support.lua",
    },
}
