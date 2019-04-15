package = "k-sway"
version = "0.1-2"
source = {
   url = "git://github.com/norcalli/lua-sway";
	 tag = "k-sway-v0.1-2";
}
description = {
   homepage = "https://github.com/norcalli/lua-sway";
   license = "MIT";
}
dependencies = {
   "lua >= 5.1, < 5.4";
	 "k-stream ~> 0.1";
	 "lua-cjson ~> 2.1";
	 "luaposix ~> 34.0";
	 -- "struct ~> 1.4"; -- Optional
}
build = {
   type = "builtin";
   modules = {
      sway = "src/sway.lua";
   };
}
