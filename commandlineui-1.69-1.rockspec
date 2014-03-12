package = "CommandLineUI"
version = "1.69-1"
source = {
   url = "http://www.pjb.com.au/comp/lua/CommandLineUI-1.69.tar.gz",
   md5 = "8373384106cd4044f62d09f6498b46ca"
}
description = {
   summary = "Command-Line User Interface, like CPAN's Term::Clui",
   detailed = [[
      This module is modelled on the CPAN's Term::Clui module.
      It offers a high-level user interface to give the user of
      command-line apps a consistent "look and feel".  It contains:
      ask(), ask_password(), choose(), confirm(), edit(), inform(), view() etc.
      It supports mouse, uft8, history, filename-completion etc.
   ]],
   homepage = "http://www.pjb.com.au/comp/lua/commandlineui.html",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1", "luaposix >= 31", "readline >= 1.1", "readkey >= 1.1", "terminfo >= 1.1", "luabitop", "lgdbm >= 20130702.52"
}
build = {
   type = "builtin",
   modules = {
      CommandLineUI = "CommandLineUI.lua"
   },
   copy_directories = {
      "doc", "test"
   }
}
