package = "HTK"

version = "3.4.0-2"

description = {
	summary = "A library of Lua constructors to create HTML code",
	detailed = [[
HTK is a library of Lua constructors that create HTML elements in a structured way.]],
	license = "MIT/X11",
	homepage = "http://www.ccpa.puc-rio.br/software/htk/",
}

source = {
	url = "http://www.ccpa.puc-rio.br/software/htk/download/htk-3.4.tar.gz",
	md5 = "5abc0b12d5ac8e1abc4b16bb9edb0a30",
}

build = {
	type = "builtin",
	modules = { htk = "doc/htk.lua", },
	copy_directories = { "doc", "test", },
}
