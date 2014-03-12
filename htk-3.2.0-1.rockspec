package = "HTK"

version = "3.2.0-1"

description = {
	summary = "A library of Lua constructors to create HTML code",
	detailed = [[
HTK is a library of Lua constructors that create HTML elements in a structured way.]],
	license = "MIT/X11",
	homepage = "http://www.ccpa.puc-rio.br/software/htk/",
}

source = {
	url = "http://www.ccpa.puc-rio.br/software/htk/download/htk-3.2.0.tar.gz",
	md5 = "93dc8be7f6f2ffffab9f5fd7dc8b8234",
}

build = {
	type = "builtin",
	modules = { htk = "doc/htk.lua", },
	copy_directories = { "doc", "test", },
}
