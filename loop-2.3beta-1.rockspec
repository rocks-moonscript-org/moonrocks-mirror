package = "LOOP"
version = "2.3beta-1"
source = {
	url = "http://luaforge.net/frs/download.php/3525/loop-2.3-beta.tar.gz",
}
description = {
	summary = "Class Models for The Lua Language",
	detailed = [[
		LOOP stands for Lua Object-Oriented Programming and is a set of packages
		for supporting different models of object-oriented programming in the
		Lua language. LOOP provides five interoperable class-hierarchy-based
		object models for Lua. Its class library provides many useful use examples
		ranging from single-table data structures to utilities for debugging,
		serialization, multi-threading and more.
	]],
	license = "MIT/X11",
	homepage = "http://loop.luaforge.net/",
	maintainer = "Renato Maia <maia@tecgraf.puc-rio.br>",
}
dependencies = {
	"lua >= 5.1",
}
build = {
	type = "none",
	install = {
		lua = {
			["loop.base"] = "lua/loop/base.lua",
			["loop.cached"] = "lua/loop/cached.lua",
			["loop.collection.MapWithArrayOfKeys"] = "lua/loop/collection/MapWithArrayOfKeys.lua",
			["loop.collection.ObjectCache"] = "lua/loop/collection/ObjectCache.lua",
			["loop.collection.OrderedSet"] = "lua/loop/collection/OrderedSet.lua",
			["loop.collection.PriorityQueue"] = "lua/loop/collection/PriorityQueue.lua",
			["loop.collection.UnorderedArray"] = "lua/loop/collection/UnorderedArray.lua",
			["loop.collection.UnorderedArraySet"] = "lua/loop/collection/UnorderedArraySet.lua",
			["loop.compiler.Arguments"] = "lua/loop/compiler/Arguments.lua",
			["loop.compiler.Conditional"] = "lua/loop/compiler/Conditional.lua",
			["loop.compiler.Expression"] = "lua/loop/compiler/Expression.lua",
			["loop.component.base"] = "lua/loop/component/base.lua",
			["loop.component.contained"] = "lua/loop/component/contained.lua",
			["loop.component.dynamic"] = "lua/loop/component/dynamic.lua",
			["loop.component.intercepted"] = "lua/loop/component/intercepted.lua",
			["loop.component.wrapped"] = "lua/loop/component/wrapped.lua",
			["loop.debug.Inspector"] = "lua/loop/debug/Inspector.lua",
			["loop.debug.Matcher"] = "lua/loop/debug/Matcher.lua",
			["loop.debug.Verbose"] = "lua/loop/debug/Verbose.lua",
			["loop.debug.Viewer"] = "lua/loop/debug/Viewer.lua",
			["loop.multiple"] = "lua/loop/multiple.lua",
			["loop.object.Exception"] = "lua/loop/object/Exception.lua",
			["loop.object.Publisher"] = "lua/loop/object/Publisher.lua",
			["loop.object.Wrapper"] = "lua/loop/object/Wrapper.lua",
			["loop.scoped"] = "lua/loop/scoped.lua",
			["loop.serial.FileStream"] = "lua/loop/serial/FileStream.lua",
			["loop.serial.Serializer"] = "lua/loop/serial/Serializer.lua",
			["loop.serial.SocketStream"] = "lua/loop/serial/SocketStream.lua",
			["loop.serial.StringStream"] = "lua/loop/serial/StringStream.lua",
			["loop.simple"] = "lua/loop/simple.lua",
			["loop.table"] = "lua/loop/table.lua",
			["loop.thread.CoSocket"] = "lua/loop/thread/CoSocket.lua",
			["loop.thread.IOScheduler"] = "lua/loop/thread/IOScheduler.lua",
			["loop.thread.Scheduler"] = "lua/loop/thread/Scheduler.lua",
			["loop.thread.SocketScheduler"] = "lua/loop/thread/SocketScheduler.lua",
			["loop.thread.Timer"] = "lua/loop/thread/Timer.lua",
		},
		bin = {
			"lua/precompiler.lua",
			"lua/preloader.lua",
		},
	},
}
