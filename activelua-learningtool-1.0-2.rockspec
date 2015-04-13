package = "ActiveLua-LearningTool"
 version = "1.0-2"
 source = {
    url = "git://github.com/seba1/ActiveLua",
    tag = "v1.0",
 }
 description = {
    summary = "An implementation of active objects into lua.",
    detailed = [[
       This is extensions adds active objects into lua.
	   It runs objects on all available cores and in parallel and executes sent messages.
	   
	   WARNING
	   This extension will make scripts to run slower, but in parallel.
	   This can be used by anyone who wishes to implement active objects into lua as an example.
	   
	   INSTALLATION
	   Run 'luarocks install activelua-learningtool' command.
    ]],
    homepage = "https://github.com/seba1/ActiveLua",
    license = "MIT/X11"
 }
 dependencies = {
    "lua >= 5.1",
    "lanes",
	"loop"
 }

build = {
  type = "builtin",
  platforms = {
    win32 = {
     type = "builtin",
      modules = {
      ["activelua"] = "src/activelua.lua",
      },
    }
  }
}