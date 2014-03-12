package = "LOOP"
version = "2.2alpha-1"
source = {
   url = "http://luaforge.net/frs/download.php/2135/loop-2.2-alpha.tar.gz",
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
   homepage = "http://loop.luaforge.net/"
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "none",
   install = {
      lua = {
         ["loop.collection.MapWithArrayOfKeys"] = "loop/collection/MapWithArrayOfKeys.lua",
         ["loop.collection.UnorderedArray"] = "loop/collection/UnorderedArray.lua",
         ["loop.collection.ObjectCache"] = "loop/collection/ObjectCache.lua",
         ["loop.collection.PriorityQueue"] = "loop/collection/PriorityQueue.lua",
         ["loop.collection.UnorderedArraySet"] = "loop/collection/UnorderedArraySet.lua",
         ["loop.collection.OrderedSet"] = "loop/collection/OrderedSet.lua",
         ["loop.cached"] = "loop/cached.lua",
         ["loop.debug.Inspector"] = "loop/debug/Inspector.lua",
         ["loop.debug.Verbose"] = "loop/debug/Verbose.lua",
         ["loop.debug.Viewer"] = "loop/debug/Viewer.lua",
         ["loop.debug.Matcher"] = "loop/debug/Matcher.lua",
         ["loop.component.intercepted"] = "loop/component/intercepted.lua",
         ["loop.component.contained"] = "loop/component/contained.lua",
         ["loop.component.dynamic"] = "loop/component/dynamic.lua",
         ["loop.component.introspection"] = "loop/component/introspection.lua",
         ["loop.component.wrapped"] = "loop/component/wrapped.lua",
         ["loop.component.base"] = "loop/component/base.lua",
         ["loop.multiple"] = "loop/multiple.lua",
         ["loop.compiler.Conditional"] = "loop/compiler/Conditional.lua",
         ["loop.compiler.Expression"] = "loop/compiler/Expression.lua",
         ["loop.object.Wrapper"] = "loop/object/Wrapper.lua",
         ["loop.object.Exception"] = "loop/object/Exception.lua",
         ["loop.serial.SocketStream"] = "loop/serial/SocketStream.lua",
         ["loop.serial.FileStream"] = "loop/serial/FileStream.lua",
         ["loop.serial.StringStream"] = "loop/serial/StringStream.lua",
         ["loop.serial.Serializer"] = "loop/serial/Serializer.lua",
         ["loop.scoped"] = "loop/scoped.lua",
         ["loop.thread.IOScheduler"] = "loop/thread/IOScheduler.lua",
         ["loop.thread.SocketScheduler"] = "loop/thread/SocketScheduler.lua",
         ["loop.thread.Scheduler"] = "loop/thread/Scheduler.lua",
         ["loop.thread.Timer"] = "loop/thread/Timer.lua",
         ["loop.thread.CoSocket"] = "loop/thread/CoSocket.lua",
         ["loop.base"] = "loop/base.lua",
         ["loop.table"] = "loop/table.lua",
         ["loop.simple"] = "loop/simple.lua"
      }
   }
}
