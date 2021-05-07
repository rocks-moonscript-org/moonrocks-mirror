package = "lambda"
version = "1.0-1"
source = {
	url = "https://gitlab.com/benrob0329/lua-lambda",
	tag = "v1.0",
}

description = {
	summary = "Atomic lambda string-parser",
	detailed = [[
		Compact lambda function which takes a string and returns a loaded function.
		Syntax: l"(args) expr"
		Example: l"(x,y) x+y"
	]],
	homepage = "https://gitlab.com/benrob0329/lua-lambda",
	license = "CC0",
}

dependencies = {
	"lua >= 5.1"
}

build = {
	type = "builtin",
	modules = {
		lambda = "lambda.lua"
	}
}
