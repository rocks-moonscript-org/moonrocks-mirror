package = "mosquitto"

version = "master-1"

source = {
    url = "git://github.com/flukso/lua-mosquitto",
    branch = "master"
}

description = {
    summary = "Lua bindings to the libmosquitto client library",
    homepage = "https://github.com/flukso/lua-mosquitto",
    license = "MIT"
}

dependencies = {
    "lua >= 5.1"
}

build = {
    type = "builtin",
    modules = {
        mosquitto = {
            sources = { "lua-mosquitto.c" },
            libraries = { "mosquitto" }
        }
    }
}
