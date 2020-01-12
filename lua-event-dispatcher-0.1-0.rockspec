package = "lua-event-dispatcher"
version = "0.1-0"

source = {
    url = "git://github.com/sheeep/lua-event-dispatcher",
    tag = "v0.1"
}

description = {
    summary = "An event dispatcher component for Lua",
    homepage = "https://github.com/sheeep/lua-event-dispatcher",
    license = "MIT",
    maintainer = "Jim Schmid <jim.schmid@1up.io>"
}

dependencies = {
    "lua >= 5.1, < 5.4"
}

build = {
    type = "builtin",
    modules = {
        ["event-dispatcher.Event"] = "src/event.lua",
        ["event-dispatcher.Dispatcher"] = "src/dispatcher.lua"
   }
}
