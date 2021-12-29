package = "tgen"
version = "0.1-1"

source = {
	url = "git+https://gitlab.com/Alsankost/lua-tgen.git",
	tag="v0.1"
}


description = {
	summary = "A library for generating code from templates for Lua",
	detailed = [[
		Detailed in the homepage.
	]],
	license = "MIT/X11",
	homepage = "https://gitlab.com/Alsankost/lua-tgen",
	maintainer = "alsankost@gmail.com"
}

dependencies = {
  "lua >= 5.1"
}

build = {
	type = "builtin",
	modules = {
		["tgen"] = "tgen.lua"
	}
}