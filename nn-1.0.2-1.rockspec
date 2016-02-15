package = "nn"
version = "1.0.2-1"
description = {
	summary = "Nanomsg bindings for Lua",
	homepage = "http://github.com/CoderPuppy/lua-nn",
	license = "MIT",
	maintainer = "CoderPuppy <coderpup@gmail.com>",
}
source = {
	url = "git://github.com/CoderPuppy/lua-nn.git",
	tag = "v1.0.2",
}
dependencies = {
	"lua >= 5.1 <= 5.3"
}
build = {
	type = "builtin",
	modules = {
		nn = {
			sources = {"lnn.c"},
			libraries = {"nanomsg"},
		}
	}
}
