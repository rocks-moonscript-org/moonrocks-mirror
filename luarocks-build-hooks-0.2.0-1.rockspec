rockspec_format = "3.0"
package = "luarocks-build-hooks"
version = "0.2.0-1"
source = {
    url = "git+https://github.com/mah0x211/luarocks-build-hooks.git",
    tag = "v0.2.0",
}
description = {
    summary = "A build backend for LuaRocks that runs hooks before/after builtin build",
    detailed = [[
This is a LuaRocks build backend that extends the builtin build process by allowing users to specify hooks to be run before and/or after the standard build steps.
It also includes a hook to resolve external dependencies using pkg-config.
]],
    homepage = "https://github.com/mah0x211/luarocks-build-hooks",
    license = "MIT/X11",
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        ["luarocks.build.hooks"] = "lua/hooks.lua",
        ["luarocks.build.hooks.extra-vars"] = "lua/hooks/extra-vars.lua",
        ["luarocks.build.hooks.pkgconfig"] = "lua/hooks/pkgconfig.lua",
        ["luarocks.build.hooks.chdir"] = "src/chdir.c",
    },
}
