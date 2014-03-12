package = "HTK"

version = "3.3.1-1"

description = {
	summary = "A library of Lua constructors to create HTML code",
	detailed = [[
HTK is a library of Lua constructors that create HTML elements in a structured way.]],
	license = "MIT/X11",
	homepage = "http://www.ccpa.puc-rio.br/software/htk/",
}

source = {
	url = "http://www.ccpa.puc-rio.br/software/htk/download/htk-3.3.1.tar.gz",
	md5 = "46bb392b4323a1213d5ebd445e542f48",
}

build = {
	type = "builtin",
	modules = { htk = "doc/htk.lua", },
	copy_directories = { "doc", "test", },
}
