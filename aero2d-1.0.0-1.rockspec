package = "aero2d"
version = "1.0.0-1"

source = {
    url = "https://github.com/nicksnewsdev/aero2d-cli/archive/refs/tags/v1.0.0.tar.gz"
}

description = {
    summary = "Aero2D CLI",
    detailed = "Tools for developing, running and building games with the Aero2D game engine.",
    homepage = "https://github.com/nicksnewsdev/aero2d-cli",
    license = "MIT"
}

dependencies = {
    "lua >= 5.1"
}

build = {
    type = "builtin",

    install = {
        bin = {
            aero2d = "bin/aero2d.lua"
        }
    }
}
