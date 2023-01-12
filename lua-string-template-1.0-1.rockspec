package = "lua-string-template"
version = "1.0-1"

source = {
	url = "git://github.com/UrNightmaree/Lust",
	tag = "v1.0"
}

description = {
	summary = "Fork of weshoke/Lust with minor fix(es)",
	detailed = "Fork of weshoke/Lust with minor fix(es)",
	homepage = "https://github.com/UrNightmaree/Lust",
	license = "MIT",
	maintainer = "UrNightmaree <afiqquraisyzulkarnain@gmail.com>"
}

dependencies = {
	"lpeg >= 1.0.2"
}

build = {
	type = "builtin",
	modules = {
		Lust = "Lust.lua",
	}
}
