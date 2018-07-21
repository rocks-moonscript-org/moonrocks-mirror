package = "quest"
version = "0.0.1-1"

description = {
	summary = "HTTP requests for Lua";
	homepage = "https://github.com/aleclarson/lua-quest";
	license = "MIT";
}

source = {
	url = "git://github.com/aleclarson/lua-quest.git";
	tag = "0.0.1";
}

dependencies = {
	"lua >= 5.1";
	"http >= 0.2";
	"emitter >= 0.0.3";
	"cqueues >= 20171014";
}

build = {
	type = "builtin";
	modules = {
		["quest"] = "quest/init.lua";
		["quest.inject"] = "quest/inject.lua";
		["quest.incoming"] = "quest/incoming.lua";
		["quest.outgoing"] = "quest/outgoing.lua";
	};
}
