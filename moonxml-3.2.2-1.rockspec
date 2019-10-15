package = "moonxml"
version = "3.2.2-1"
source = {
	url = "git://github.com/DarkWiiPlayer/moonxml.git";
	tag = 'v3.2.2';
}
description = {
	homepage = "https://github.com/DarkWiiPlayer/moonxml";
	license = "Unlicense";
}
dependencies = {
	"lua >= 5.1";
	"xhmoon ~> 2.0";
	"xhmoon >= 2.0.1";
}
build = {
	type = "builtin",
	modules = {
		moonxml = 'moonxml.lua'
	};
	install = {
		bin = { "bin/moonxml" };
	};
}
