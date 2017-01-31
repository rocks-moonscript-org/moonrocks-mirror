package = "LuaJudo"
version = "1.0-1"
source = {
    url = "judoclient.tar.gz"
}
description = {
    summary = "Judo cliet library.",
    detailed = [[
      Judi client library more in details.
    ]],
    homepage = "",
    license = "MIT/X11"
}
dependencies = {
    "lua >= 5.2, < 5.4"
}
build = {
    type = "builtin",
    modules = {
        command = "src/command.lua",
        errors  = "src/errors.lua",
        filter  = "src/filter.lua",
        judo    = "src/judo.lua",
        log     = "src/log.lua",
        meta    = "src/meta.lua",
        object  = "src/object.lua",
        service = "src/service.lua",
        store   = "src/store.lua",
        utils   = "src/utils.lua"
    }
}