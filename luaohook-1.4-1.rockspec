package = "luaohook"
version = "1.4-1"
source = {
    url = "git://github.com/justdie386/luaohook",
    tag = "main",
}
description = {
    summary = "a cross platform global keyboard hook",
    detailed  = [[
        This library requires luajit to be installed. This is a cross platform library that allows you to make hotkeys, interact with the mouse and keyboard, but globaly, not just when focusing a certain window, works on X11, windows and macos. Thanks to the libuiohook project which i built this library around. The keys are mapped here: https://github.com/kwhat/libuiohook/blob/1.2/include/uiohook.h#L134-L403. if luarocks failed to build the library on your platform, please open an issue so that i could look into it here https://github.com/justdie386/luaohook/issues
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

