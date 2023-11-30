---@diagnostic disable: lowercase-global
package = "meisocafe.hammerspoon.dkb"
version = "0.2-1"
source = {
	url = "git://github.com/meisocafe/hammerspoon-dkb", -- We don't have one yet
	tag = "v0.2-1",
}
description = {
	summary = "Declarative keybindings and some other goodies for hammerspoon",
	detailed = [[
      A tiny framework for hammerspoon that lets you write keybindings and other functionalities 
      in a very human-friendly way, so that your file is self-documented and easy to modify. 
      Because the framework is small, it can also easily be modified and adapted to your needs.
   ]],
	homepage = "https://meisocafe.github.io/hammerspoon-dkb/", -- We don't have one yet
	license = "MIT",
}
dependencies = {
	"lua >= 5.1",
}
build = {
	type = "builtin",
	modules = {
		["dkb"] = "src/init.lua",
		["dkb.exec"] = "src/exec.lua",
		["dkb.filter"] = "src/filter.lua",
		["dkb.keybindings"] = "src/keybindings.lua",
		["dkb.modal"] = "src/modal.lua",
		["dkb.toast"] = "src/toast.lua",
	},
	copy_directories = { "docs" },
}
