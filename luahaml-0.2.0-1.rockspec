package = "luahaml"
version = "0.2.0-1"
source = {
   url = "http://cloud.github.com/downloads/norman/lua-haml/lua-haml-0.2.0-0.tar.gz",
   md5 = "8e487ba87011657c6b9b75a109c0f90e"
}
description = {
   summary = "An implementation of the Haml markup language for Lua.",
   detailed = [[
      Lua Haml is an implementation of the Haml markup language for Lua.
   ]],
   homepage = "http://github.com/norman/lua-haml",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1", "lpeg"
}
build = {
   type = "none",
   install = {
      bin = {
         luahaml = "bin/luahaml"
      },
      lua = {
         "haml.lua", ['haml.code'] = "haml/code.lua",
         ['haml.comment'] = "haml/comment.lua",
         ['haml.end_stack'] = "haml/end_stack.lua",
         ['haml.ext'] = "haml/ext.lua",
         ['haml.filter'] = "haml/filter.lua",
         ['haml.header'] = "haml/header.lua",
         ['haml.lua_adapter'] = "haml/lua_adapter.lua",
         ['haml.parser'] = "haml/parser.lua",
         ['haml.precompiler'] = "haml/precompiler.lua",
         ['haml.renderer'] = "haml/renderer.lua",
         ['haml.string_buffer'] = "haml/string_buffer.lua",
         ['haml.tag'] = "haml/tag.lua"
      }
   }
}
