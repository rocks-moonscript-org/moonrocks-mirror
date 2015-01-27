package = "murmurhash3"
version = "1.2-0"

source = {
	url = "git://github.com/x25/murmurhash3-lua.git",
	tag = "v1.2"
}

description = {
	summary = "Murmurhash3 for Lua",
	detailed = "Murmurhash3 for Lua",
	homepage = "https://github.com/x25/murmurhash3-lua/",
	license = "Public domain"
}

dependencies = {
	"lua >= 5.1"
}

build = {
	type = "builtin",
	modules = {
		murmurhash3 = "lmurmurhash3.c"
	}
}
