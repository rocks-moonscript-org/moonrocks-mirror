package = "tinyobj"
version = "0.0.0-1"
source = {
	url = "git+https://gitea.tfnux.org/adraenwan/tinyobj.git",
	tag = "v0.0.0"
}

description = {
	summary = "tiny object library",
	--detailed = "",
	--homepage = "",
	license = "MIT",
	maintainer = "Adraenwan",
}

dependencies = {
	"lua >= 5.1, < 5.5",
}

build = {
	type = "none",
	install = {
		lua = {
			["tinyobj"] = "tinyobj.lua",
		},
	},
}
