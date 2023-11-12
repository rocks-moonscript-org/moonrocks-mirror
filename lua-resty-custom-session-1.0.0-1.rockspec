package = "lua-resty-custom-session"
version = "1.0.0-1"
source = {
    url = "file://resty.zip"
}

dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        ["kong.plugins.resty.session"]                       = "kong/plugins/resty/session.lua",
        ["kong.plugins.resty.session.identifiers.random"]    = "kong/plugins/resty/session/identifiers/random.lua",
        ["kong.plugins.resty.session.storage.shm"]           = "kong/plugins/resty/session/storage/shm.lua",
        ["kong.plugins.resty.session.storage.dshm"]          = "kong/plugins/resty/session/storage/dshm.lua",
        ["kong.plugins.resty.session.storage.redis"]         = "kong/plugins/resty/session/storage/redis.lua",
        ["kong.plugins.resty.session.storage.cookie"]        = "kong/plugins/resty/session/storage/cookie.lua",
        ["kong.plugins.resty.session.storage.memcache"]      = "kong/plugins/resty/session/storage/memcache.lua",
        ["kong.plugins.resty.session.storage.memcached"]     = "kong/plugins/resty/session/storage/memcached.lua",
        ["kong.plugins.resty.session.strategies.default"]    = "kong/plugins/resty/session/strategies/default.lua",
        ["kong.plugins.resty.session.strategies.regenerate"] = "kong/plugins/resty/session/strategies/regenerate.lua",
        ["kong.plugins.resty.session.hmac.sha1"]             = "kong/plugins/resty/session/hmac/sha1.lua",
        ["kong.plugins.resty.session.ciphers.aes"]           = "kong/plugins/resty/session/ciphers/aes.lua",
        ["kong.plugins.resty.session.ciphers.none"]          = "kong/plugins/resty/session/ciphers/none.lua",
        ["kong.plugins.resty.session.compressors.none"]      = "kong/plugins/resty/session/compressors/none.lua",
        ["kong.plugins.resty.session.compressors.zlib"]      = "kong/plugins/resty/session/compressors/zlib.lua",
        ["kong.plugins.resty.session.encoders.hex"]          = "kong/plugins/resty/session/encoders/hex.lua",
        ["kong.plugins.resty.session.encoders.base16"]       = "kong/plugins/resty/session/encoders/base16.lua",
        ["kong.plugins.resty.session.encoders.base64"]       = "kong/plugins/resty/session/encoders/base64.lua",
        ["kong.plugins.resty.session.serializers.json"]      = "kong/plugins/resty/session/serializers/json.lua"
    }
}