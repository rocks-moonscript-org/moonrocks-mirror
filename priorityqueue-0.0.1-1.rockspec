package = "priorityqueue"
version = "0.0.1-1"
source = {
   url = "https://github.com/Blequi/priorityqueue/releases/download/v0.0.1/priorityqueue-0.0.1.zip",
   dir = "priorityqueue-0.0.1"
}
description = {
   homepage = "https://github.com/Blequi/priorityqueue",
   license = "MIT",
   summary = "Priority Queue data structure written in pure Lua",
   detailed = [[
Priority Queue is a data structure whose elements
are ordered by priority. Elements sharing the same
priority are maintained in a queue obeying a
FIFO behavior (first in, first out).
]]
}
dependencies = {
    "lua >= 5.1",
    "queue >= 0.0.1",
    "binarytree >= 0.0.2"
}
build = {
   type = "builtin",
   modules = {
      priorityqueue = "priorityqueue.lua"
   }
}
