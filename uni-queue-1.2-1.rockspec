package = "uni-queue"
version = "1.2-1"
source = {
   url = "git+https://github.com/ratanvarghese/uni-queue.git",
   tag = "v1.0"
}
description = {
   summary = "Double-ended queue where all elements must be unique",
   detailed = [[
	This is an implementation of a double-ended queue where all elements are forced to be unique. Pushing or extending the queue with an element already in the queue will fail. Otherwise, it can be used like any other deque.
   ]],
   homepage = "https://github.com/ratanvarghese/uni-queue",
   license = "MIT/X11"
}
dependencies = {
   "lua ~> 5.3",
   "otom >= 1.1"
}
build = {
   type = "builtin",
   modules = {
      ["uni-queue"] = "uni-queue.lua",
      ["uni-queue_spec"] = "uni-queue_spec.lua"
   }
}
