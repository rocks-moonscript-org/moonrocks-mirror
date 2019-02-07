package = "image_handler"
version = "0.1-0"
source = {
   url = "https://github.com/drmargarido/image_handler.git",
   tag = "v1.0"
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
