package = "Fluidsynth"
version = "1.9-0"
source = {
   url = "http://www.pjb.com.au/comp/lua/fluidsynth-1.9.tar.gz",
   md5 = "ef4cd70c8f25ee0f734c6a02dcbaef0a"
}
description = {
   summary = "Interface to the fluidsynth library",
   detailed = [[
      This Lua module offers a calling interface to the Fluidsynth
      library, which uses SoundFonts to synthesise audio.
   ]],
   homepage = "http://www.pjb.com.au/comp/lua/fluidsynth.html",
   license = "MIT/X11",
}
-- http://www.luarocks.org/en/Rockspec_format
dependencies = {
   "lua >=5.1, <5.3",
}
external_dependencies = {  -- Duarn 20150216, 20150416
	FLUIDSYNTH = {
		library = "fluidsynth";
	};
}
build = {
   type = "builtin",
   modules = {
      ["fluidsynth"] = "fluidsynth.lua",
      ["C-fluidsynth"] = {
         sources   = { "C-fluidsynth.c" },
         libraries = { "fluidsynth" },
      },
   },
   copy_directories = { "doc", "test" },
}
