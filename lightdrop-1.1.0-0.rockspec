package = "lightdrop"
version = "1.1.0-0"
source = {
	url = "git+https://github.com/Rorkh/lightdrop"
}
description = {
	summary = "LuaJIT bot frameworkh",
	homepage = "https://github.com/Rorkh/lightdrop",
	maintainer = "Rorkh <kremlebotone@gmail.com>"
}
dependencies = {
	"turbo >= 2.1",
	"vklib >= 1.0.0-1",
	"lua-cjson >= 2.1.0.6-1"
}
build = {
	type = "builtin",
	modules = {
		["lightdrop"] = "src/lightdrop.lua",

		["lightdrop.backends.discord"] = "src/backends/discord.lua",
		["lightdrop.backends.vk"] = "src/backends/vklongpoll.lua"
	}
}
