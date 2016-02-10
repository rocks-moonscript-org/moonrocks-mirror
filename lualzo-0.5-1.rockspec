package = "lualzo"
version = "0.5-1"
source = {
    url = "git://github.com/starius/luaLZO.git",
    tag = "0.5",
}
description = {
    summary = "Lua Module Lzo",
    license = "MIT",
    homepage = "https://github.com/starius/luaLZO",
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        ['luaLZO'] = {'luaLZO.c', 'minilzo.c'},
    },
}
