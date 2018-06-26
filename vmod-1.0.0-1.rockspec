package = "vmod"
version = "1.0.0-1"
source = {
   url = "git://github.com/DarkWiiPlayer/vmod.git";
	 tag = 'v1.0.0';
}
description = {
   homepage = "https://github.com/DarkWiiPlayer/vmod";
   license = "Unlicense";
}
dependencies = {
  "lua >= 5.1";
}
build = {
   type = "builtin",
   modules = {
     vmod = 'vmod.lua'
   }
}
