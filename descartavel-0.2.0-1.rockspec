rockspec_format = "3.0"

package = "descartavel"
version = "0.2.0-1"

source = {
    url = "https://github.com/y-akulau/descartavel/archive/v0.2.0.tar.gz"
}

description = {
    summary = "Disposables",
    license = "MIT",
    homepage = "https://github.com/y-akulau/descartavel",
    maintainer = "Yauheni Akulau <yauheni.akulau@gmail.com>"
}

dependencies = {
    "lua >= 5.1",
    "classe 0.1.0"
}

build = {
    type = "builtin",
    modules = {
        descartavel = "src/descartavel.lua",
        ["descartavel.disposer"] = "src/descartavel/disposer.lua",
        ["descartavel.composite"] = "src/descartavel/composite.lua"
    }
}
