package = "ollama"
version = "1.0-1"
source = {
   url = "git+https://git@github.com/MrSyabro/ollama_lua.git",
   branch = "master"
}
description = {
   summary = "Simple Ollama REST API",
   homepage = "https://github.com/MrSyabro/ollama_lua",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.2",
   "obj",
   "rest",
}
build = {
   type = "builtin",
   modules = { ollama = "ollama.lua" }
}
