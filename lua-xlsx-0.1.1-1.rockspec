package = "lua-xlsx"
version = "0.1.1-1"
source = {
    url = "git://github.com/saspivey98/lua-xlsx",
}
description = {
    summary = "The module *xlsx* allows read access to .xlsx files.",
    detailed = [[This fork replaces the dependency lua-ziparchive with lua-zip,
    and also merges replaces xmlize dependency with luaexpat.]],
    homepage = "https://github.com/saspivey98/lua-xlsx",
    license = "MIT",
}
dependencies = {
    "lua >= 5.1",
    "lua-zip >= 0.2-0",
    "luaexpat >= 1.5.2"
}
build = {
    type="builtin",
    modules = {
        xlsx = "xlsx.lua",
    }
}