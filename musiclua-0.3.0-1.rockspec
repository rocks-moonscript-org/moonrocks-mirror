package = "musiclua"
version = "0.3.0-1"

source = {
    url = "git://github.com/ValyaCat/musiclua.git",
    tag = "v0.3.0",
}

description = {
    summary  = "A terminal music player written in Lua with TUI, mpv backend, and extensible source system.",
    detailed = [[
        musiclua is a Lua package for scanning local audio files, organising them
        into playlists, and playing them through a curses-based TUI backed by mpv.
        It supports mp3, ogg, wav, flac, m4a, aac, opus, and wma formats.
        Features include M3U playlist import, RSS/Podcast feeds, URL streaming,
        play modes (sequential, repeat-all, repeat-one, shuffle), and sortable library.
    ]],
    homepage = "https://github.com/ValyaCat/musiclua",
    license  = "MIT",
}

dependencies = {
    "lua >= 5.1",
    "luafilesystem >= 1.8",
    "luasocket >= 3.0",
    "luasec >= 1.1",
    "dkjson >= 2.5",
    "lua-curses >= 20200724",
}

build = {
    type = "builtin",
    modules = {
        ["musiclua"]                 = "musiclua/init.lua",
        ["musiclua.version"]         = "musiclua/version.lua",
        ["musiclua.app"]             = "musiclua/app.lua",
        ["musiclua.config"]          = "musiclua/config.lua",
        ["musiclua.library"]         = "musiclua/library.lua",
        ["musiclua.track"]           = "musiclua/track.lua",
        ["musiclua.playlist"]        = "musiclua/playlist.lua",
        ["musiclua.sources"]         = "musiclua/sources/init.lua",
        ["musiclua.sources.local_dir"] = "musiclua/sources/local_dir.lua",
        ["musiclua.sources.m3u"]    = "musiclua/sources/m3u.lua",
        ["musiclua.sources.rss"]    = "musiclua/sources/rss.lua",
        ["musiclua.sources.url"]    = "musiclua/sources/url.lua",
        ["musiclua.players"]         = "musiclua/players/init.lua",
        ["musiclua.players.base"]    = "musiclua/players/base.lua",
        ["musiclua.players.mpv"]     = "musiclua/players/mpv.lua",
        ["musiclua.players.system"]  = "musiclua/players/system.lua",
        ["musiclua.tui"]             = "musiclua/tui/init.lua",
        ["musiclua.tui.app"]         = "musiclua/tui/app.lua",
        ["musiclua.tui.screen"]      = "musiclua/tui/screen.lua",
        ["musiclua.tui.list"]        = "musiclua/tui/list.lua",
        ["musiclua.tui.statusbar"]   = "musiclua/tui/statusbar.lua",
        ["musiclua.tui.helpbar"]     = "musiclua/tui/helpbar.lua",
        ["musiclua.tui.input"]       = "musiclua/tui/input.lua",
        ["musiclua.tui.theme"]       = "musiclua/tui/theme.lua",
        ["musiclua.util.fs"]         = "musiclua/util/fs.lua",
        ["musiclua.util.json"]       = "musiclua/util/json.lua",
        ["musiclua.util.log"]        = "musiclua/util/log.lua",
        ["musiclua.util.time"]       = "musiclua/util/time.lua",
        ["musiclua.util.http"]       = "musiclua/util/http.lua",
    },
    install = {
        bin = {
            musiclua = "bin/musiclua",
        },
    },
}
