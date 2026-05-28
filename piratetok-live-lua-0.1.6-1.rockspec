rockspec_format = "3.0"
package = "piratetok-live-lua"
version = "0.1.6-1"
source = {
    url = "git+https://github.com/PirateTok/live-lua.git",
    tag = "v0.1.6",
}
description = {
    summary = "TikTok Live WebSocket connector — real-time chat, gifts, likes, and viewer events. No authentication required.",
    detailed = [[
        Connect to any TikTok Live stream and receive real-time events:
        chat, gifts, likes, joins, viewer counts, and more.
        Poll-based API designed for game engine integration (Love2D, Defold, etc.).
        No authentication required.
    ]],
    license = "0BSD",
    maintainer = "Zmole Cristian",
    homepage = "https://piratetok.boats",
    labels = {"tiktok", "tiktok-live", "live", "stream", "chat", "gifts", "websocket", "protobuf", "realtime", "piratetok"},
}
dependencies = {
    "lua >= 5.1",
    "luasocket >= 3.0",
    "luasec >= 1.0",
    "lua-protobuf >= 0.5",
    "lua-zlib >= 1.0",
    "lua-cjson >= 2.1",
}
build = {
    type = "builtin",
    modules = {
        ["piratetok"] = "piratetok/init.lua",
        ["piratetok.auth"] = "piratetok/auth.lua",
        ["piratetok.errors"] = "piratetok/errors.lua",
        ["piratetok.events"] = "piratetok/events.lua",
        ["piratetok.http"] = "piratetok/http.lua",
        ["piratetok.ua"] = "piratetok/ua.lua",
        ["piratetok.url"] = "piratetok/url.lua",
        ["piratetok.websocket"] = "piratetok/websocket.lua",
        ["piratetok.proto"] = "piratetok/proto/init.lua",
        ["piratetok.proto.common"] = "piratetok/proto/common.lua",
        ["piratetok.proto.frames"] = "piratetok/proto/frames.lua",
        ["piratetok.proto.messages"] = "piratetok/proto/messages.lua",
        ["piratetok.proto.messages_ext"] = "piratetok/proto/messages_ext.lua",
        ["piratetok.helpers.profile_cache"] = "piratetok/helpers/profile_cache.lua",
        ["piratetok.helpers.gift_streak"] = "piratetok/helpers/gift_streak.lua",
        ["piratetok.helpers.like_accumulator"] = "piratetok/helpers/like_accumulator.lua",
    },
}
