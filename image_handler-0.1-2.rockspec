package = "image_handler"
version = "0.1-2"
source = {
   url = "git://github.com/drmargarido/image_handler",
   tag = "v0.1.2"
}
dependencies = {
   "lua >= 5.1",
   "printable_chars",
   "magic"
}
description = {
   detailed = "This library wraps the common code that is needed to handle images when they are submitted to an application over the internet.",
   homepage = "https://github.com/drmargarido/image_handler",
   license = "MIT"
}
build = {
   type = "builtin",
   modules = {
      image_handler = "image_handler.lua"
   }
}
