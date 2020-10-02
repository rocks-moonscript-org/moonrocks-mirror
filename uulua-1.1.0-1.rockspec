package = "uulua"
version = "1.1.0-1"
source = {
	url = "git://github.com/DarkWiiPlayer/uulua";
  tag = "v1.1.0";
}
description = {
	summary = "Generate UUIDs and ULIDs in plain lua.";
	detailed = ([[
		uuLua is a library to generate Universally Unique Identifiers, aka. UUIDs, written in pure lua.
	]]):gsub("\t", "");
	homepage = "https://darkwiiplayer.github.io/uulua/";
	license = "Unlicense";
}
dependencies = {
	"lua >= 5.1";
}
build = {
	type = "builtin";
	modules = {
		uulua = "src/uulua.lua"
	};
}
