package = "emitter"
version = "0.0.3-1"

description = {
	summary = "Event emitters for Lua";
	homepage = "https://github.com/aleclarson/lua-emitter";
	license = "MIT";
}

source = {
	url = "git://github.com/aleclarson/lua-emitter.git";
	tag = "0.0.3";
}

build = {
	type = "builtin";
	modules = {
		["emitter"] = "emitter/init.lua";
	};
}
