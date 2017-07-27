package = "cereal"
version = "0.1.0-2"

source = {
	url = "git://github.com/RyanSquared/cereal";
}

description = {
	summary = "Serialization and parsing for data formats in MoonScript";
}

dependencies = {
	"lyaml";
	"dkjson";
	"lua-toml"
}

build = {
	type = "builtin";
	modules = {
		["cereal"] = "init.lua"
	};
}
