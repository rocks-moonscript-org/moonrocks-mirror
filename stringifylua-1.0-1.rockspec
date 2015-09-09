package = "StringifyLua"
version = "1.0-1"

build = {
	type = "builtin",
	modules = {
		stringify = "src/stringify.lua",
	}
}

dependencies = {
	"lua >= 5.1",
}

description = {
	license = "MIT",
	summary = "Converting lua table to string",
	detailed = "Converting lua table to string",
	homepage = "https://github.com/Perkovec/stringify-lua",
}

source = {
	url = "git://github.com/Perkovec/stringify-lua",
  	tag = "v1.0"
}
