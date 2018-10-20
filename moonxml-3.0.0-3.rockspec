package = "moonxml"
version = "3.0.0-3"
source = {
   url = "git://github.com/DarkWiiPlayer/moonxml.git";
	 tag = "v3.0.0";
}
description = {
   homepage = "https://github.com/DarkWiiPlayer/moonxml/tree/v3.0.0";
   license = "Unlicense";
}
dependencies = {
  "lua >= 5.1";
	"xhmoon ~> 1";
}
build = {
   type = "builtin",
   modules = {
     moonxml = 'xml.lua'
   }
}
