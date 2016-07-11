package = "LinkedList"
version = "1.0-3"
source = {
	url = "https://github.com/zunware/LuaLinkedList",
	tag = "1.0-3"
}
description = {
	summary = "A Doubly-Linked List implementation",
	detailed = [[
		A doubly linked list for Lua. Requires middleclass. Work in progress...
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
		LNode = "LNode.lua"
	}
	-- copy_directories = {"Docs"},
}


