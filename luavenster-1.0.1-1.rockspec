package = "luavenster"

version = "1.0.1-1"

source = {
    url = "git://github.com/oberhofer/luavenster.git",
    tag = "v1.0.1"
}

description = {
    summary = "Small object oriented layer around WinAPI windows",
    detailed = [[
        Small object oriented layer around WinAPI windows. Structure 
        is in the spirit of the Python Venster and VensterCE libraries.
    ]],
    license = "MIT/X11",
    homepage = "https://github.com/oberhofer/luavenster"
}

dependencies = {
   "lua >= 5.1",
   "luawinapi >= 1.0.1"
}

build = {
    type = "none",
    copy_directories = { "doc", "samples" },
    platforms = {
        windows = {
            install= {
                lua = {
                    ["venster.init"]      = "src/init.lua",
                    ["venster.utils"]     = "src/utils.lua",
                    ["venster.layout"]    = "src/layout.lua",
                    ["venster.imagelist"] = "src/imagelist.lua",
                }
            }
        }
    }
}
