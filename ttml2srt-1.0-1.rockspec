package = "ttml2srt"
version = "1.0-1"
source = {
    url = "git://github.com/Dropkickx86/ttml2srt",
    tag = "v1.0.0"
}
description = {
    summary = "TTML to SRT subtitle converter",
    detailed = [[
        Lua module for converting TTML-format subtitle files to SRT-format subtitle files.
    ]],
    homepage = "https://github.com/Dropkickx86/ttml2srt"
}
dependencies = {
    "lua >= 5.1, <= 5.5"
}
build = {
    type = "builtin",
    modules = {
        ttml2srt = "ttml2srt.lua"
    }
}
