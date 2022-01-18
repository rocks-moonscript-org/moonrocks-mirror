package = "patok"
version = "1.2-0"
source = {
	url = "https://github.com/CosmicToast/patok/archive/v1.2.0.zip",
	dir = "patok-1.2.0",
}
description = {
	homepage = "https://github.com/CosmicToast/patok",
	license = "Unlicense",
	summary = "The Lua Pattern Tokenizer",
	detailed = [[
		A tokenizer for lua that utilizes lua patterns and a parser combinator to consume its output.
	]],
}
dependencies = {
	"lua >= 5.1"
}
build = {
	type = "builtin",
	modules = {
		patok = 'patok.lua',
		piecemeal = 'piecemeal.lua',
	}
}
