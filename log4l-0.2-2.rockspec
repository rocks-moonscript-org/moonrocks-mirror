#!/usr/bin/env lua

package = "log4l"
version = "0.2-2"
source  = {
    url = "git://github.com/mwchase/log4l.git",
    branch = "log4l-v0.2",
}
description = {
    summary = "A simple API to use logging features",
    detailed    = [[
log4l provides a simple API to use logging features in Lua. Its design was
based on log4j. log4l currently supports, through the use of appenders,
console, file, rolling file, email, socket and SQL outputs.
]],
    homepage    = "https://github.com/mwchase/log4l",
    license = "MIT/X11",
}
dependencies = {
    "lua >= 5.1, < 5.4",
    "luasocket"
}
build   = {
    type        = "none",
    install = {
        lua = {
            ['log4l'] = "src/log4l.lua",
            ['log4l.console']  = "src/log4l/console.lua",
            ['log4l.file']  = "src/log4l/file.lua",
            ['log4l.rolling_file']  = "src/log4l/rolling_file.lua",
            ['log4l.email']  = "src/log4l/email.lua",
            ['log4l.sql']  = "src/log4l/sql.lua",
            ['log4l.socket']  = "src/log4l/socket.lua",
        }
    },
    copy_directories = {
        "doc/html",
    },
}
