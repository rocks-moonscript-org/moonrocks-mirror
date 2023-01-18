package = "com.logiceditor.fork.crc32"

version = "1.1.5.g84430b6-1"

source = {
	url = "git://github.com/logiceditor-com/luacrc32",
	tag = "1.1.5.g84430b6",
}

description = {
	summary = "CRC-32 module implemented in C",
	license = "MIT",
	homepage = "https://github.com/hjelmeland/luacrc32",
}

dependencies = {
	"lua >= 5.1, < 5.5"
}

build = {
	type = "builtin",
	modules = {
		["com.logiceditor.fork.crc32"] = { "crc32.c", "wrap.c" }
	}
}
