package = "LuaJudo"
version = "0.1-1"
source = {
    url = "https://github.com/BlackBeltTechnology/judo-scripting/archive/v0.1.tar.gz",
    tag = "v0.1",
    dir = "luajudo"
}
description = {
    summary = "Judo client library.",
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
        luajudo = {
            base64  = "lua/src/base64.lua",
            class   = "lua/src/class.lua",
            command = "lua/src/command.lua",
            errors  = "lua/src/errors.lua",
            filter  = "lua/src/filter.lua",
            jnet    = "lua/src/jnet.lua",
            jsh     = "lua/src/jsh.lua",
            judo    = "lua/src/judo.lua",
            log     = "lua/src/log.lua",
            meta    = "lua/src/meta.lua",
            net     = "lua/src/net.lua",
            object  = "lua/src/object.lua",
            osdatepatch = "lua/src/osdatepatch.lua",
            prototype = "lua/src/prototype.lua",
            service = "lua/src/service.lua",
            store   = "lua/src/store.lua",
            utils   = "lua/src/utils.lua"
        }
    }
}