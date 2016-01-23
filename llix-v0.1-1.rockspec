package = "llix"
version = "v0.1-1"
source = {
	url = "git://github.com/nymphium/llix"
}
description = {
	summary = "llix, Lightweight Lua Interpreter eXtended",
	detailed = [[llix is Lua interpreter, added the try-catch syntax.]],
	homepage = "https://github.com/nymphium/llix",
	license = "MIT"
}
dependencies = {
	"lua >= 5.3",
	"moonscript >= 0.4",
	"inspect",
	"lpeg",
	"linenoise"
}
build = {
	type = "make",
	build_variables = {},
	install_variables = {}
}
