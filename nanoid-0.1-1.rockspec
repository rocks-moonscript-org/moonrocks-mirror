package = "nanoid"
version = "0.1-1"

source = {
	url = "git://github.com/aikin-vip/lua-resty-nanoid.git",
	tag = "v0.1",
}

description = {
	summary = "nanoid for luajit2 and openresty using a single header NanoID implementation in C from https://github.com/NerdyPepper/nanoid",
	homepage = "https://github.com/aikin-vip/lua-resty-nanoid.git",
	license = "MIT",
	maintainer = "aikin",
}

dependencies = {
	"lua >= 5.1",
}

build = {
	type = "builtin",

    modules = {
        nanoid = {
            sources = { "src/nanoid.c" }
        }
    },
}
