package = "language"
version = "1.0.0-0"
source = {
	url = "https://github.com/alejandro-alzate/language-lua",
	tag = "luarocks-lastest",
}
description = {
	summary = "A pure lua library for management of strings geared towards localization purposes.",
	detailed = [[
	A pure lua language manager geared to use on user interfaces whether is a game or a productivity tool with capability of hotswaping.	
	]],
	homepage = "http://...",
	license = "MIT",
}
dependencies = {
	"lua >= 5.1, < 5.4",
}
build = {
	type = "builtin",
	modules = {
		language = "language.lua",
	},
}