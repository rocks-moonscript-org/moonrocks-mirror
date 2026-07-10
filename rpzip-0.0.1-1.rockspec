rockspec_format = "3.0"
package = "rpzip"
version = "0.0.1-1"

description = {
	summary = "Creating reproducible/deterministic ZIP archives",
	detailed = "Refer https://github.com/drivendataorg/repro-zipfile",
	license = "GPL-3.0",
	homepage = "https://texrocks.readthedocs.io/en/latest/topics/rpzip.md.html",
	maintainer = "Wu",
	labels = {
		"zip",
	},
}

dependencies = {
	"lua >= 5.1",
	"lua-zlib >= 0.0.1",
	"texrocks >= 0.3.12",
	"zipwriter >= 0.0.1",
	"luafilesystem",
}

source = {
	url = "https://github.com/ustctug/texrocks/archive/1258119e88ba57701bc3cf0cacb18546a73f1424.zip",
	dir = "texrocks-1258119e88ba57701bc3cf0cacb18546a73f1424/packages/rpzip",
}

build = {
	type = "builtin",
}
