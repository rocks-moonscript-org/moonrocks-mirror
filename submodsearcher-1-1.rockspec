package = "subModSearcher"
version = "1-1"
source = {
	url = "git://github.com/aryajur/subModSearcher",
	tag = "1.21.07"
}
description = {
	summary = "Additional searcher to search sub-modules",
	detailed = [[
		A module to add an additional searcher to Lua to search better for sub-modules.
	]],
	homepage = "https://github.com/aryajur/subModSearcher", 
	license = "MIT" 
}
dependencies = {
	"lua >= 5.1"
}
build = {
	type = "builtin",
    modules = {
		subModSearcher = "src/subModSearcher.lua",
    },
}