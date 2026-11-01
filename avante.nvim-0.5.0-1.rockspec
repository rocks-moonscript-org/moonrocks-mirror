rockspec_format = "3.0"
package = "avante.nvim"
version = "0.5.0-1"

description = {
	summary = "Use your Neovim like using Cursor AI IDE!",
	detailed = "**avante.nvim** is a Neovim plugin designed to emulate the behaviour of the [Cursor](https://www.cursor.com) AI IDE. It provides users with AI-driven code suggestions and the ability to apply these recommendations directly to their source files with minimal effort.",
	license = "Apache-2.0",
	homepage = "https://github.com/avante-corp/avante.nvim",
	labels = {
		"neovim",
		"ai",
		"llm",
	},
}

dependencies = {
	"lua==5.1",
	"luarocks>=3.11.1, <4.0.0",
	"plenary.nvim",
	"nui.nvim",
	"mega.cmdparse",
}

source = {
	url = "https://github.com/avante-corp/avante.nvim/archive/v0.5.0.zip",
}

build = {
	type = "builtin",
	copy_directories = {
		"autoload",
		"doc",
		"ftplugin",
		"plugin",
	},
}
