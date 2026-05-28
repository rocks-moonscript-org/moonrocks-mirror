local git_ref = "v0.1.6"
local modrev = "0.1.6"
local specrev = "1"

local repo_url = "https://github.com/luanvil/mote"

rockspec_format = "3.0"
package = "mote"
version = modrev .. "-" .. specrev

description = {
    summary = "Lightweight Lua HTTP server with routing and middleware",
    detailed = [[
Coroutine-based HTTP server with routing, middleware, SSE, and more.]],
    labels = { 'http-server', 'lua' } ,
    homepage = "https://github.com/luanvil/mote",
    license = 'MIT'
}

dependencies = {
    "lua >= 5.1, < 5.5",
    "luasocket >= 3.0",
    "lua-cjson >= 2.1",
    "lpeg >= 1.0",
}

test_dependencies = {
    "busted",
}

source = {
    url = repo_url .. "/archive/" .. git_ref .. ".zip",
    dir = "mote-" .. "0.1.6",
}

if modrev == "scm" or modrev == "dev" then
    source = {
        url = repo_url:gsub("https", "git")
    }
end

build = {
    type = "builtin",
    modules = {
        ["mote"] = "mote/init.lua",
        ["mote.server"] = "mote/server.lua",
        ["mote.router"] = "mote/router.lua",
        ["mote.middleware"] = "mote/middleware.lua",
        ["mote.jwt"] = "mote/jwt.lua",
        ["mote.crypto"] = "mote/crypto.lua",
        ["mote.log"] = "mote/log.lua",
        ["mote.url"] = "mote/url.lua",
        ["mote.poll"] = "mote/poll.lua",
        ["mote.timer_wheel"] = "mote/timer_wheel.lua",
        ["mote.parser"] = "mote/parser/init.lua",
        ["mote.parser.core"] = "mote/parser/core.lua",
        ["mote.parser.http"] = "mote/parser/http.lua",
        ["mote.parser.uri"] = "mote/parser/uri.lua",
        ["mote.parser.ip"] = "mote/parser/ip.lua",
        ["mote.parser.mime"] = "mote/parser/mime.lua",
        ["mote.parser.multipart"] = "mote/parser/multipart.lua",
        ["mote.pubsub"] = "mote/pubsub/init.lua",
        ["mote.pubsub.client"] = "mote/pubsub/client.lua",
        ["mote.pubsub.broker"] = "mote/pubsub/broker.lua",
        ["mote.pubsub.sse"] = "mote/pubsub/sse.lua",
        ["mote.crypto_c"] = {
            sources = {
                "mote/crypto/hashings.c",
                "mote/crypto/sha256.c",
                "mote/crypto/hmac_sha256.c",
                "mote/crypto/randombytes.c",
            },
            incdirs = { "mote/crypto" },
        },
    },
    platforms = {
        unix = {
            modules = {
                ["mote.poll_c"] = {
                    sources = { "mote/poll.c" },
                },
            },
        },
        windows = {
            modules = {
                ["mote.crypto_c"] = {
                    sources = {
                        "mote/crypto/hashings.c",
                        "mote/crypto/sha256.c",
                        "mote/crypto/hmac_sha256.c",
                        "mote/crypto/randombytes.c",
                    },
                    incdirs = { "mote/crypto" },
                    libraries = { "advapi32" },
                },
            },
        },
    },
}
