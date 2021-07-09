package = "lightdrop"
version = "1.1.1-1"
source = {
	url = "git+https://github.com/Rorkh/lightdrop"
}
description = {
	summary = "LuaJIT VK bot frameworkh",
	homepage = "https://github.com/Rorkh/lightdrop",
	maintainer = "Rorkh <kremlebotone@gmail.com>"
}
dependencies = {
	"turbo >= 2.1",
	"vklib >= 1.0.0-1",
	"lua-cjson >= 2.1.0.6-1",
	"middleclass >= 4.1.1-0"
}
build = {
	type = "builtin",
	modules = {
		["lightdrop"] = "src/lightdrop.lua",
		["lightdrop.backends.vk"] = "src/backends/vk.lua",
		["lightdrop.backends.vk.keyboard"] = "src/backends/vk/keyboard.lua"
	}
}
