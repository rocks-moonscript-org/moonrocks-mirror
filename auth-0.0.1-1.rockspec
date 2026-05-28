rockspec_format = "3.0"
package = "auth"
version = "0.0.1-1"

description = {
	summary = "A library to get cookies from firefox or chrome.",
	detailed = "created for zhihu.nvim, also can be used for other similar plugins, such as csdn.nvim",
	license = "MIT",
	homepage = "https://github.com/pxwg/zhihu.nvim/tree/main/packages/auth",
	maintainer = "Wu",
	labels = {
		"neovim",
	},
}

dependencies = {
	"lua >= 5.1",
	"platformdirs >= 0.0.1",
	"lsqlite3 >= 0.0.1",
	"lua-cjson >= 0.0.1",
}

build_dependencies = {
	"luarocks-build-rust-mlua >= 0.2.5",
}

source = {
	url = "https://github.com/pxwg/zhihu.nvim/archive/76e6c1dc93e8f5b164b5ea6876b2a4afb64d452c.zip",
	dir = "zhihu.nvim-76e6c1dc93e8f5b164b5ea6876b2a4afb64d452c/packages/auth",
}

build = {
	type = "rust-mlua",
	modules = {
		chrome_cookie = "chrome_cookie",
	},
	install = {
		lua = {
			["auth.cache"] = "lua/auth/cache.lua",
			["auth.scripts.firefox"] = "lua/auth/scripts/firefox.sql",
			["auth.chained"] = "lua/auth/chained.lua",
			auth = "lua/auth.lua",
			["auth.json"] = "lua/auth/json.lua",
			["auth.chrome"] = "lua/auth/chrome.lua",
			["auth.auth"] = "lua/auth/auth.lua",
			["auth.firefox"] = "lua/auth/firefox.lua",
		},
	},
}
