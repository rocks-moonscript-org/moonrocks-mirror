package = "moonhtml"
version = "1.1.0-1"
source = {
	 url = "git://github.com/DarkWiiPlayer/moonhtml.git";
	 tag = 'v1.1.0';
}
description = {
	 homepage = "https://github.com/DarkWiiPlayer/moonhtml";
	 license = "Unlicense";
}
dependencies = {
	"lua >= 5.1";
}
build = {
	 type = "builtin",
	 modules = {
		 moonhtml = 'html.lua'
	 }
}
