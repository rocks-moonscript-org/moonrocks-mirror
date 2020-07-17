package = "warn"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/darkwiiplayer/lua-warn.git";
	tag = "v1.0.0";
}

description = {
   homepage = "https://github.com/darkwiiplayer/lua-warn",
   license = "Public Domain";
}

build = {
   type = "builtin",
   modules = {
     warn = 'warn.lua';
	  ["warn.compatible"] = "warn/compatible.lua";
   }
}
