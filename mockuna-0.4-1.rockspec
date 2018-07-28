package = "mockuna"
version = "0.4-1"
source = {
    url = "git://github.com/kraftman/mockuna",
    tag = 'v0.3'
}
description = {
   summary = "A simple mocking framework for Lua",
   detailed = [[
      Mocking framework based on sinon
   ]],
   homepage = "https://github.com/kraftman/mockuna",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.2"
}
build = {
    type = 'builtin',
    modules = {
        mockuna = 'mockuna/mockuna.lua',
        ["mockuna.calll"] = "mockuna/call.lua",
    }
}