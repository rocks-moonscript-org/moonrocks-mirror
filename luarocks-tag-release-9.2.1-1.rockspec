rockspec_format = "3.0"
package = "luarocks-tag-release"
version = "9.2.1-1"

description = {
	summary = "Luarocks release workflow for GitHub",
	detailed = [[
This is not a real lua package.
It exists for the purpose of testing the workflow.]],
	license = "AGPL-3.0",
	homepage = "https://github.com/lumen-oss/luarocks-tag-release",
	labels = {
		"neovim",
	},
}

dependencies = {
	"lua>=5.1",
	"luafilesystem>=1.0.0, <2.0.0",
	"dkjson>=2.0.0, <3.0.0",
}

source = {
	url = "https://github.com/lumen-oss/luarocks-tag-release/archive/v9.2.1.zip",
}

build = {
	type = "builtin",
	copy_directories = {
		"bin",
	},
}
