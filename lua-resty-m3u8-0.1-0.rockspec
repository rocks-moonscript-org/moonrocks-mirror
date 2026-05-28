package = "lua-resty-m3u8"
version = "0.1-0"
source = {
    url = "git://github.com/HanadaLee/lua-resty-m3u8.git",
    tag = "v0.1",
}
description = {
    summary = "HLS M3U8 playlist parser and serializer for OpenResty",
    detailed = [[
lua-resty-m3u8 is an HLS m3u8 playlist parser and serializer for OpenResty / LuaJIT.
It parses both media and master playlists, supporting the full range of HLS tags
including Low-Latency HLS parts, preload hints, rendition reports, SCTE35/CUE ad
insertion markers, dateranges, and content steering. All parsed content can be
serialized back to valid m3u8 text via model :dumps() methods.
    ]],
    homepage = "https://github.com/HanadaLee/lua-resty-m3u8",
    license = "MIT"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        ["resty.m3u8"] = "lib/resty/m3u8/init.lua",
        ["resty.m3u8.parser"] = "lib/resty/m3u8/parser.lua",
        ["resty.m3u8.model"] = "lib/resty/m3u8/model.lua",
        ["resty.m3u8.protocol"] = "lib/resty/m3u8/protocol.lua"
    }
}
