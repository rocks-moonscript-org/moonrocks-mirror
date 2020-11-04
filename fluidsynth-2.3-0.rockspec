package = "Fluidsynth"
version = "2.3-0"
source = {
   url = "http://www.pjb.com.au/comp/lua/fluidsynth-2.3.tar.gz",
   md5 = "0f3c01cb8a8be37e869a8f3b3b0e0a94"
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
   "lua >=5.1, <5.5",
}
external_dependencies = {  -- Duarn 20150216, 20150416
	FLUIDSYNTH = {
		header  = "fluidsynth.h",
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
