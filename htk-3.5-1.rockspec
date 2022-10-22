package = "HTK"

version = "3.5-1"

description = {
	summary = "A library of Lua constructors to create HTML code",
	detailed = [[
HTK is a library of Lua constructors that create HTML elements in a structured way.]],
	license = "MIT/X11",
	homepage = "http://www.ccpa.puc-rio.br/software/htk/",
}

source = {
	url = "http://www.ccpa.puc-rio.br/software/htk/download/htk-3.5.tar.gz",
	md5 = "756f82e26f7db85bd05a72906d85f0a2",
}

build = {
	type = "builtin",
	modules = { htk = "doc/htk.lua", },
	copy_directories = { "doc", "test", },
}
