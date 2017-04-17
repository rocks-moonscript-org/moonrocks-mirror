#!/usr/bin/env lua

package = "log4l"
version = "0.1-1"
source  = {
    url = "git://github.com/mwchase/log4l.git",
    branch = "log4l-v0.1",
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
            ['logging'] = "src/logging.lua",
            ['logging.console']  = "src/logging/console.lua",
            ['logging.file']  = "src/logging/file.lua",
            ['logging.rolling_file']  = "src/logging/rolling_file.lua",
            ['logging.email']  = "src/logging/email.lua",
            ['logging.sql']  = "src/logging/sql.lua",
            ['logging.socket']  = "src/logging/socket.lua",
        }
    },
    copy_directories = {
        "doc/html",
    },
}
