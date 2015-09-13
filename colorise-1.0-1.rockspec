package = "Colorise"
version = "1.0-1"

build = {
	type = "builtin",
	modules = {
		colorise = "src/colorise.lua",
	}
}

dependencies = {
	"lua >= 5.1",
}

description = {
	license = "MIT",
	summary = "Color converter (RGB, RGBA, HEX)",
	detailed = "Color converter (RGB, RGBA, HEX)",
	homepage = "https://github.com/Perkovec/colorise-lua",
}

source = {
	url = "git://github.com/Perkovec/colorise-lua",
  	tag = "v1.0"
}
