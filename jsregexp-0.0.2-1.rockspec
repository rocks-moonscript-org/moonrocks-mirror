package = "jsregexp"
version = "0.0.2-1"
source = {
	url = "git://github.com/kmarius/jsregexp.git",
	branch = "master"
}
description = {
	summary = "javascript (ECMA19) regular expressions for lua(snip)",
	detailed = [[
WIP: This library offers a single function to use javascript regular expressions in lua. It makes use of libregexp from https://bellard.org/quickjs/.
	]],
	homepage = "https://github.com/kmarius/jsregexp",
	license = "MIT"
}
dependencies = {
	"lua == 5.1",
}
build = {
	type = "builtin",
	modules = {
		jsregexp = {
			"cutils.c",
			"jsregexp.c",
			"libregexp.c",
			"libunicode.c",
		}
	}
}
