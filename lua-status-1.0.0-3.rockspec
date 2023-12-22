rockspec_format = "1.1"
package = "lua-status"
version = "1.0.0-3"
source = {
    url = "git+https://gitlab.com/stote/lua-status",
}
description = {
    summary = "A library meant to print status messages",
    detailed = "Lua status is a library meant to print status messages to the user, more specifically to the standard error",
    homepage = "https://gitlab.com/stote/lua-status",
    license = "MIT",
}
dependencies = {
    "lua >= 5.1, < 5.5",
    "eansi >= 1.2-1",
}
build = {
    type = "builtin",
    modules = {
        ["lua-status.init"] = "lua-status/init.lua",
    },
}
