local ldeVersion = "0.8.1"

package = "lde"
version = ldeVersion .. "-1"

source = {
	url = "git+https://github.com/lde-org/lde-luarocks"
}

description = {
	summary = "A package manager, test runner and runtime for Lua, written in Lua.",
	license = "MIT"
}

build = {
	type = "command",
	install_command = "lua install.lua " .. ldeVersion
}
