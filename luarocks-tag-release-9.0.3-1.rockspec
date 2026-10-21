rockspec_format = "3.0"
package = "luarocks-tag-release"
version = "9.0.3-1"

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
	"dkjson==2.11",
	"luafilesystem==1.9.0",
}

source = {
	url = "https://github.com/lumen-oss/luarocks-tag-release/archive/v9.0.3.zip",
}

build = {
	type = "builtin",
	copy_directories = {
		"bin",
	},
}
