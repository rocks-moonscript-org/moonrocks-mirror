rockspec_format = "3.0"
package = "xhmoon"
version = "2.0.1-2"
source = {
	url = "git://github.com/DarkWiiPlayer/xhmoon.git";
	tag = 'v2.0.1';
}
description = {
	summary = "Helper library for MoonXML.";
	homepage = "https://github.com/DarkWiiPlayer/xhmoon";
	license = "Unlicense";
	labels = {
		"xml";
		"html";
	 }
}
dependencies = {
	"lua >= 5.1";
}
build = {
	type = "builtin",
	modules = {
		xhmoon = 'xhmoon.lua'
	}
}
