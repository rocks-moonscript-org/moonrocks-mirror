rockspec_format = "3.0"
package = "easy-lsp"
version = "0.1.0-1"
source = {
	url = "git+ssh://git@github.com/benjamin-voisin/easy-lsp.git"
}
description = {
	summary = "Get a working LSP within minutes!",
	detailed = "A simple lib that helps you build an LSP. Only focus on whats important.",
	homepage = "",
	license = "CC-BY-SA-4.0"
}
dependencies = {
	"lua >= 5.1",
	"lua-cjson >= 2.1.0",
}
build = {
	type = "builtin",
	modules = {
		["easy-lsp"] = "easy-lsp/init.lua",
		["easy-lsp.rpc"] = "easy-lsp/rpc.lua",
		["easy-lsp.io"] = "easy-lsp/io.lua",
		["easy-lsp.log"] = "easy-lsp/log.lua",
	}
}
test = {
   type = "busted",
}
