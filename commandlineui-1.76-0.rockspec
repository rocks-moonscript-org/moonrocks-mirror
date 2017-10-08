package = "CommandLineUI"
version = "1.76-0"
source = {
   url = "http://www.pjb.com.au/comp/lua/CommandLineUI-1.76.tar.gz",
   md5 = "d697a09200d1e0d5ca669dc521e35759"
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
   "lua >=5.1, <5.4",
   "luaposix >= 31",
   "readline >= 1.3",
   "readkey  >= 1.2",
   "terminfo >= 1.1",
--   "luabitop",   -- not in lua5.3
   "lgdbm >= 20130702",
}
-- external_dependencies = {
--   ALSA = {
--      header  = "alsa/asoundlib.h",
--      library = "asound",
--   }
-- }
build = {
   type = "builtin",
   modules = {
      ["CommandLineUI"] = "CommandLineUI.lua",
--    ["C-readkey"] = {
--       sources   = { "C-readkey.c" },
--         incdirs   = { "$(ALSA_INCDIR)" },
--         libdirs   = { "$(ALSA_LIBDIR)" },
--         libraries = { "asound" },
--    }
   },
   copy_directories = { "doc", "test" }
}
