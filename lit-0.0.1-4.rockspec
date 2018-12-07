package = "Lit"
version = "0.0.1-4"
rockspec_format = "3.0"
-- technically, windows should be supported, but I don't have a machine to
-- test it right now.
supported_platforms = {"macosx", "linux"}
source = {
   url = "git://github.com/mokafolio/Lit"
}
description = {
   summary = "Lit is a library for creative coding focussed on 2D vector graphics.",
   detailed = [[
   Lit is a library for creative coding focussed on 2D vector graphics.
   ]],
   homepage = "https://github.com/mokafolio/Lit",
   license = "MIT"
}
dependencies = {
   "lua >= 5.3"
}
-- technically since we are circumventing the luarocks build mechanisms for the most part,
-- we don't need to do that at all. this is mainly useful to catch missing libraries before
-- entering the custom meson / ninja based build step.
external_dependencies = {
    sdl2 = {
       library = "SDL2"
    }
    -- @TODO: Can we check for binaries here, too? i.e. to see if meson/ninja are installed?
}
build = {
    type = "command",
    build_command = "meson -Dlr_install_lib_dir=$(LIBDIR) -Dlr_install_lua_dir=$(LUADIR) -Ddefault_library=static -Dbuildtype=release build && cd build && ninja",
    install_command = "cd build && ninja install"
}
