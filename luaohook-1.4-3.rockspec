package = "luaohook"
version = "1.4-3"
source = {
    url = "git://github.com/justdie386/luaohook",
    tag = "main",
}
description = {
    summary = "a cross platform global keyboard hook",
    detailed  = [[
        cross platform keyboard and mouse hook, works on windows macos and x11 linux, not wayland. Please do not install using sudo on unix system(mac included)
        because the build system this package use will break.
    ]]
}
dependencies = {
    "lua >= 5.1",
    "luarocks-build-xmake"
}
build = {
    type = "xmake",

    install = {
            lua = {
                ["luaohook.keyboardkeys"] = "src/enums/keyboardkeys.lua",
                ["luaohook.mousebuttons"] = "src/enums/mousebuttons.lua",
                ["luaohook.eventtype"] = "src/enums/events.lua",
                  }
              },
        }  

