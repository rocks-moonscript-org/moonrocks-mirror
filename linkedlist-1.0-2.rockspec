package = "LinkedList"
version = "1.0-2"
source = {
	url = "https://github.com/zunware/LuaLinkedList",
	tag = "1.0-2"
}
description = {
	summary = "A Doubly-Linked List implementation",
	detailed = [[
		TODO
	]],
	homepage = "http://josellausas.com",
	license = "Apache 2.0"
}
dependencies = {
	"lua",
	"middleclass",
}
build = {
	type = "builtin",
	modules = {
		LinkedList = "LinkedList.lua",
	}
	-- copy_directories = {"Docs"},
}


