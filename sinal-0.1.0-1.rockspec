rockspec_format = "3.0"

package = "sinal"
version = "0.1.0-1"

source = {
    url = "https://github.com/y-akulau/sinal/archive/v0.1.0.tar.gz"
}

description = {
    summary = "Fine-grained reactivity",
    license = "MIT",
    homepage = "https://github.com/y-akulau/sinal",
    maintainer = "Yauheni Akulau <yauheni.akulau@gmail.com>"
}

dependencies = {
    "lua >= 5.1",
    "classe 0.1.0",
    "descartavel 0.1.0"
}

build = {
    type = "builtin",
    modules = {
        sinal = "src/sinal.lua",
    }
}
