package = "test-lua-plugin"
version = "0.1.0-1"
source = {
   url = "git://github.com/bclouser/test-lua-plugin",
   tag = "v0.1",
}
description = {
   summary = "An example kong plugin",
   detailed = [[
      Just a simple kong plugin that we can use in kong
   ]],
   homepage = "http://me.github.com/test-lua-plugin",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
external_dependencies = {
}
build = {
   type = "builtin",
   modules = {
      -- Every kong plugin must have these two lua modules
      ["kong.plugins.test-lua-plugin.handler"] = "src/handler.lua",
      ["kong.plugins.test-lua-plugin.schema"] = "src/schema.lua",
      -- Add any other lua modules needed for the module here
   },
}