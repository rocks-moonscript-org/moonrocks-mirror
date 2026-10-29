-- LuaRocks rockspec for `panto-rsvp`: a standalone Pantograph RSVP extension.
rockspec_format = "3.0"
package = "panto-rsvp"
version = "0.1.0-1"

source = {
    url = "git+https://code.tjp.lol/public/panto-rsvp.git",
    tag = "v0.1.0",
}

description = {
    summary = "Rapid serial presentation focus mode for Pantograph assistant text.",
    detailed = [[
        Presents the latest assistant text one newline-delimited paragraph at
        a time, with Markdown display styling and playback controls.
    ]],
    homepage = "https://code.tjp.lol/public/panto-rsvp",
    license = "MIT",
    labels = { "ai", "llm", "panto", "pantograph", "extension", "rsvp" },
}

dependencies = {
    "lua >= 5.4, < 5.5",
    "luv >= 1.48",
}

build = {
    type = "builtin",
    modules = {
        ["panto-rsvp"] = "init.lua",
        ["rsvp.config"] = "rsvp/config.lua",
        ["rsvp.player"] = "rsvp/player.lua",
    },
}
