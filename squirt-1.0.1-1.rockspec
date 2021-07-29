package = "squirt"
version = "1.0.1-1"
source = {
	url = "git+https://github.com/Rorkh/squirt"
}
description = {
	summary = "Wrapper for turbo.lua HTTP capabilities (web framework)",
	homepage = "https://github.com/Rorkh/squirt",
	maintainer = "Rorkh <kremlebotone@gmail.com>"
}
dependencies = {
	"turbo >= 2.1",
	"aspect >= 2.2-0",
	"chameleon >= 1.0.0-0"
}
build = {
	type = "builtin",
	modules = {
		["squirt"] = "src/squirt.lua",
		["squirt.route"] = "src/squirt/route.lua"
	}
}
