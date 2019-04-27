package = "pulseaudio_cli"
version = "0.2-2"
source = {
	url = "https://gitlab.com/doronbehar/lua-pulseaudio_cli.git"
}
description = {
	summary = "Control PulseAudio devices using the command line",
	detailed = "Using libpulse, control pulseaudio with multiple sources and sinks",
	homepage = "https://gitlab.com/doronbehar/lua-pulseaudio_cli",
	license = "Apache v2.0"
}
supported_platforms = {
	"linux"
}
dependencies = {
	"lua >= 5.3",
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
