package="lua-log-r"
version="1.0.0-0"
source = {
    url = "git://github.com/Palethorn/lua-log-r.git",
    tag = "v1.0.0"
}
description = {
   summary = "Pure lua library for writing logs",
   detailed = [[
       lua-log-r is a extendable library for logging written in pure lua.
       It currently supports file output in json and simple text line format.
       It can easily be exteded by implementing custom formatters and appenders.
       Implementation and API was inspired by Monolog logger for PHP.
   ]],
   homepage = "https://github.com/Palethorn/lua-log-r",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1",
   "json4lua"
}

build = {
   type = "none",
    install = {
        lua = {
            ["lua-log-r.logger"] = "src/logger.lua",
            ["lua-log-r.appender.console"] = "src/appender/console.lua",
            ["lua-log-r.appender.null"] = "src/appender/null.lua",
            ["lua-log-r.appender.file"] = "src/appender/file.lua",
            ["lua-log-r.formatter.json"] = "src/formatter/json.lua",
            ["lua-log-r.formatter.line"] = "src/formatter/line.lua"
        }
    }
}
