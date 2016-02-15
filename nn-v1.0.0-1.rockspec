package = "nn"
version = "v1.0.0-1"
source = {
	url = "git://github.com/CoderPuppy/lua-nn.git",
	tag = "v1.0.0",
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
