package = "pub-sub"
version = "1.0.0-1"
source = {
	url = "git://github.com/michaeljosephpurdy/pub-sub",
}
description = {
	summary = "Publish/Subscription implementation",
	detailed = [[
        A simple and to the point publish/subscription module written in lua.
    ]],
	homepage = "https://github.com/michaeljosephpurdy/pub-sub",
	license = "MIT",
}
dependencies = {
	"lua >= 5.1",
}
build = {
	type = "builtin",
	modules = {
		["pub-sub"] = "pub-sub.lua",
	},
}
