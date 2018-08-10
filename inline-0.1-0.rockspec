package = "Inline"
version = "0.1-0"
source = {
   url = "git://github.com/AricHasting/inline",
   tag = "v0.1.0"
}
description = {
   summary = "Inline CSS for Lapis",
   detailed = [[
       Inline is a system for serving CSS as part of your
       code. Serving CSS is as simple as adding a style tag
       to your layout, and creating CSS classes from
       strings in your Moonscript or Lua code.
   ]],
   homepage = "https://github.com/AricHasting/inline",
   license = "MIT"
}
dependencies = {
    "lua >= 5.1, < 5.4",
    "murmurhash3 >= 1.3"
}
build = {
   type = "builtin",
   modules = {
       inline = "src/inline.lua"
   }
}
