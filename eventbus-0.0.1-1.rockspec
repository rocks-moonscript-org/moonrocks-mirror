package = "eventbus"
version = "0.0.1-1"

source = {
    url = "git://github.com/prabirshrestha/lua-eventbus.git",
    tag = "v0.0.1-1"
}

description = {
    summary = "Event bus for Lua",
    homepage = "https://github.com/prabirshrestha/lua-eventbus",
    license = "MIT",
    maintainer = "mail@prabir.me",
    detailed = [[
        Event bus for lua
    ]]
}

build = {
    type = "builtin",
    modules = { eventbus = "eventbus.lua" },
}
