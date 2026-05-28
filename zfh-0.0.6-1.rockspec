rockspec_format = "3.0"
package = "zfh"
version = "0.0.6-1"

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
	"html-entities >= 0.0.1",
	"htmlparser >= 0.0.1",
	"luasocket >= 0.0.1",
	"vim >= 0.0.1",
}

build_dependencies = {
	"luarocks-build-rust-mlua >= 0.2.5",
}

source = {
	url = "https://github.com/pxwg/zhihu.nvim/archive/339f37f82a00f8e46954c60bd6c951e50d4a1418.zip",
	dir = "zhihu.nvim-339f37f82a00f8e46954c60bd6c951e50d4a1418/packages/zfh",
}

deploy = {
	wrap_bin_scripts = false,
}

build = {
	type = "rust-mlua",
	modules = {
		markdown_to_html = "markdown_to_html",
	},
	install = {
		lua = {
			["zfh.generator.markdown"] = "lua/zfh/generator/markdown.lua",
			zfh = "lua/zfh.lua",
			["zfh.generator.typst"] = "lua/zfh/generator/typst.lua",
			["zfh.translator"] = "lua/zfh/translator.lua",
			["zfh.generator"] = "lua/zfh/generator.lua",
			["zfh.translator.cmd"] = "lua/zfh/translator/cmd.lua",
		},
		bin = {
			zfh = "bin/zfh",
		},
	},
}
