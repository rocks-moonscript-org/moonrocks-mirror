package = "danetool"
version = "4-1"
source = {
	url = "hg+http://code.zash.se/danetool/",
	tag = "89e6b3a3523c"
}
description = {
	summary = "Tool for validating and generating TLSA records",
	homepage = "https://www.zash.se/danetool.html",
	license = "MIT/X11"
}
dependencies = {
	"luasocket",
	"luasec >= 0.5", -- 0.6 preferred
	"luaunbound",
	-- "luaossl",
	-- "luacrypto",
	-- "prosody.util.hashes",
}
build = {
	type = "builtin",
	modules = {
	},
	install = {
		bin = { "danetool" }
	},
}

-- vim: syntax=lua :
