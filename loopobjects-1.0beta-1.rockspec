package = "loopobjects"
version = "1.0beta-1"
source = {
	url = "https://github.com/renatomaia/loop-objects/archive/v1.0beta.zip",
	dir = "loop-objects-1.0beta",
}
description = {
	summary = "LOOP classes of object utilities.",
	detailed = "Classes that implement OOP utilities.",
	homepage = "https://github.com/renatomaia/loop-objects",
	license = "MIT",
}
dependencies = {
	"lua >= 5.2, < 5.4",
	"loop >= 3.0, < 4.0",
}
build = {
	type = "builtin",
	modules = {
		['loop.object.Dummy'] = "lua/loop/object/Dummy.lua",
		['loop.object.Exception'] = "lua/loop/object/Exception.lua",
		['loop.object.Publisher'] = "lua/loop/object/Publisher.lua",
		['loop.object.Wrapper'] = "lua/loop/object/Wrapper.lua",
	},
}
