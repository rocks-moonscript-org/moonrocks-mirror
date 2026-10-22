package = "queue"
version = "0.0.2-0"
source = {
   url = "https://github.com/Blequi/queue/releases/download/v0.0.2/queue-0.0.2.zip",
   dir = "queue-0.0.2"
}
description = {
   summary = "Queue data structure written in pure Lua",
   detailed = [=[
In computer science, queue is a data structure
operating on elements in a FIFO (first in, first out)
manner. In other words, the first element added to the
queue will be the first one to be removed.

Even though there are common possibilities to implement
a queue, this module employs a linked list implementation
written in pure Lua.]=],
   homepage = "https://github.com/Blequi/queue",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      queue = "queue.lua"
   }
}
