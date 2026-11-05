rockspec_format = "3.0"
package = "zhihu.nvim"
version = "0.1.5-1"

description = {
	summary = "Zhihu on Neovim | \231\159\165\228\185\142\231\154\132neovim\230\143\146\228\187\182",
	license = "MIT",
	homepage = "https://github.com/pxwg/zhihu.nvim",
	labels = {
		"neovim-plugin",
		"note-taking",
		"zhihu",
	},
}

dependencies = {
	"lua>=5.1",
	"lua-requests-temp",
	"lua-cjson",
	"htmlparser",
	"html-entities",
	"md5",
	"sha1",
	"base64",
	"uuid",
	"mimetypes",
	"auth",
	"zfh",
	"datafile",
}

source = {
	url = "https://github.com/pxwg/zhihu.nvim/archive/0.1.5.zip",
}

build = {
	type = "builtin",
	install = {
		conf = {
			["Untitled.md"] = "etc/conf/Untitled.md",
		},
	},
	copy_directories = {
		"plugin",
	},
}
