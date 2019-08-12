package = "awesomewm-autostart"
version = "0.1-1"
source = {
	url = "git://github.com/doronbehar/awesome-autostart",
	tag = "v0.1"
}
description = {
	summary = "Enhanced autostart for AwesomeWM",
	homepage = "https://github.com/doronbehar/awesome-autostart",
	license = "Apache v2.0"
}
supported_platforms = {
	"linux"
}
dependencies = {
	"lua >= 5.2",
	"logger",
	"luaposix"
}
build = {
	type = "builtin",
	modules = {
		autostart = "init.lua"
	}
}
