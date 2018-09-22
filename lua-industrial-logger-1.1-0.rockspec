package = "lua-industrial-logger"
version = "1.1-0"
source = {
    url = "git://github.com/djfdyuruiry/lua-industrial-logger.git",
    tag = "v1.1"
}
description = {
    summary = "A logging framework adding simple, powerful and reliable logs to any Lua application",
    detailed = [[
        lua-industrial-logger

        A pure lua logging framework that follows the conventions of popular frameworks like logback, log4net and log4j.
        
        Logging configuration is declared using a Lua based DSL for ease of use and flexibility.

        See: https://github.com/djfdyuruiry/lua-industrial-logger/blob/master/README.md

        Created by djfdyuruiry: https://github.com/djfdyuruiry
    ]],
    license = "MIT",
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        ["lil.AnsiDecoratedStringBuilder"] = "lil/AnsiDecoratedStringBuilder.lua",
        ["lil.ConsoleAppender"] = "lil/ConsoleAppender.lua",
        ["lil.DebugLogger"] = "lil/DebugLogger.lua",
        ["lil.FileAppender"] = "lil/FileAppender.lua",
        ["lil.FileConfigurationLoader"] = "lil/FileConfigurationLoader.lua",
        ["lil.FileUtils"] = "lil/FileUtils.lua",
        ["lil.IdUtils"] = "lil/IdUtils.lua",
        ["lil.Levels"] = "lil/Levels.lua",
        ["lil.Logger"] = "lil/Logger.lua",
        ["lil.LoggerConfiguration"] = "lil/LoggerConfiguration.lua",
        ["lil.LoggerConfigurationDsl"] = "lil/LoggerConfigurationDsl.lua",
        ["lil.LoggerFactory"] = "lil/LoggerFactory.lua",
        ["lil.LuaOsUtils"] = "lil/LuaOsUtils.lua",
        ["lil.NativeOsUtils"] = "lil/NativeOsUtils.lua",
        ["lil.OsFacts"] = "lil/OsFacts.lua",
        ["lil.OsUtils"] = "lil/OsUtils.lua",
        ["lil.OsUtilsConfig"] = "lil/OsUtilsConfig.lua",
        ["lil.PatternBuilder"] = "lil/PatternBuilder.lua",
        ["lil.PatternGeneratorMap"] = "lil/PatternGeneratorMap.lua",
        ["lil.RollingFileAppender"] = "lil/RollingFileAppender.lua",
        ["lil.StringUtils"] = "lil/StringUtils.lua",
        ["lil.ThreadUtils"] = "lil/ThreadUtils.lua",
        ["lil.polyfills.loadstring"] = "lil/polyfills/loadstring.lua",
        ["lil.polyfills.setfenv"] = "lil/polyfills/setfenv.lua"
    },
    copy_directories = {}
}
