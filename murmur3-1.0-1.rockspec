package = "murmur3"
version = "1.0-1"

source = {
	url = "git://github.com/x25/murmurhash3-lua",
	tag = "v1.0"
}

description = {
	summary = "Murmurhash3 for Lua",
	detailed = "Murmurhash3 for Lua",
	homepage = "https://github.com/x25/murmurhash3-lua",
	license = "Public domain"
}

dependencies = {
	"lua >= 5.1"
}

build = {
	type = "builtin",
	modules = {
		murmur3 = "murmurhash3-lua/lmurmur3.c"
	}
}
