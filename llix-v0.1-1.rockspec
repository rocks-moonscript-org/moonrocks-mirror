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
	"moonscript",
	"inspect",
	"lpeg",
	"linenoise"
}
build = {
	type = "command",
	build_command = "moonc -o llix_eval.lua llix/eval.moon; moonc -o llix_parse.lua llix/parse.moon",
	install = {
		lua = {
			"llix_eval.lua",
			"llix_parse.lua"
		},
		bin = {"bin/llix"}
	}
}
