package = "danetool"
version = "0-1"
source = {
	url = "hg+http://code.zash.se/danetool/",
	tag = "f26aef6d4610"
}
description = {
	summary = "Tool for validating and generating TLSA records",
	homepage = "https://www.zash.se/danetool.html",
	license = "MIT/X11"
}
dependencies = {
	"luasocket",
	"luasec",
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
