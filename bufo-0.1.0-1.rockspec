rockspec_format = "3.0"

package = "bufo"
version = "0.1.0-1"

source = {
    url = "https://github.com/y-akulau/bufo/archive/v0.1.0.tar.gz"
}

description = {
    summary = "A encantador Lua testing library with a focus on simplicity.",
    license = "MIT",
    homepage = "https://github.com/y-akulau/bufo",
    maintainer = "Yauheni Akulau <yauheni.akulau@gmail.com>"
}

dependencies = {
    "lua >= 5.1",
    "classe 0.1.0"
}

build = {
    type = "builtin",
    modules = {
        bufo = "src/bufo.lua"
    }
}
