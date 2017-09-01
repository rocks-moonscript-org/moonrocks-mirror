package = "gnucrypt"
version = "0.0.1-0"

description = {
	summary = "glibc crypt(3) wrapper",
	homepage = "https://github.com/fnordpipe/lua-gnucrypt",
	license = "MIT",
}

source = {
	url = "git+https://github.com/fnordpipe/lua-gnucrypt.git",
	tag = "v0.0.1",
}

dependencies = {
	"lua <= 5.3",
}

build = {
	type = "make",
	install_pass = false,
	build_variables = {
		CFLAGS="$(CFLAGS)",
		LUA="$(LUA)",
		LUA_INCDIR="$(LUA_INCDIR)",
	},
	install = {
		lib = {
			["gnucrypt"] = "gnucrypt.so",
		},
	},
}
