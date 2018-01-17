package = "xcq-subprocess"
version = "0.1-1"
source = {
   url = "git+https://github.com/jdesgats/xcq.subprocess.git",
   tag = "v0.1",
}
description = {
   summary = "Subprocess management for cqueues",
   detailed = [[
This library allows to spawn subprocesses from a cqueues controller and control
them in an asynchronous fashion.]],
   homepage = "https://github.com/jdesgats/xcq.subprocess",
   license = "MIT/X11"
}
dependencies = {
   "cqueues",
   "luaposix"
}
build = {
   type = "builtin",
   modules = {
      ["xcq.subprocess"] = "xcq/subprocess.lua"
   },
   copy_directories = {
      "examples"
   }
}
