package = "bassoon"
version = "0.1.0-1"

source = {
	url = "https://github.com/RyanSquared/bassoon";
}

description = {
	summary = "A library for hashing and signing short texts";
}

dependencies = {
	"luaossl";
	"basexx";
}

build = {
	type = "builtin";
	modules = {
		["bassoon"] = "init.lua";
		["bassoon.util"] = "util.lua";
	};
}
