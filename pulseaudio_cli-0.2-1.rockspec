package = "pulseaudio_cli"
version = "0.2-1"
source = {
	url = "git://github.com/doronbehar/lua-pulseaudio_cli.git",
	tag = "v0.2"
}
description = {
	summary = "Control PulseAudio devices using the command line",
	detailed = "Using libpulse, control pulseaudio with multiple sources and sinks",
	homepage = "https://github.com/doronbehar/lua-pulseaudio_cli",
	license = "Apache v2.0"
}
supported_platforms = {
	"linux"
}
dependencies = {
	"lua >= 5.1",
	"pulseaudio"
	-- "lua_cliargs" I don't force the download of this dependency if you just need the API
}
build = {
	type = "builtin",
	modules = {
		pulseaudio_cli = "pulseaudio_cli.lua"
	},
	install = {
		bin = {
			lpulse = "cli.lua"
		}
	}
}
