rockspec_format = "3.0"
package = "zfh"
version = "0.0.1-1"

description = {
	summary = "A library to convert many markup languages to Zhihu flavored HTML.",
	detailed = "",
	license = "MIT",
	homepage = "https://github.com/pxwg/zhihu.nvim/tree/main/packages/zfh",
	maintainer = "Wu",
	labels = {
		"neovim",
	},
}

dependencies = {
	"lua >= 5.1",
	"vim >= 0.0.1",
	"html-entities >= 0.0.1",
	"htmlparser >= 0.0.1",
}

build_dependencies = {
	"luarocks-build-rust-mlua >= 0.2.5",
}

source = {
	url = "https://github.com/pxwg/zhihu.nvim/archive/0b4be548b6fe999b879c577acb0d13fc145a0270.zip",
	dir = "zhihu.nvim-0b4be548b6fe999b879c577acb0d13fc145a0270/packages/zfh",
}

build = {
	type = "rust-mlua",
	modules = {
		markdown_to_html = "markdown_to_html",
	},
	install = {
		lua = {
			["zfh.markdown"] = "lua/zfh/markdown.lua",
			zfh = "lua/zfh.lua",
		},
	},
}
