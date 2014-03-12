package = "MIDI"
version = "4.1-0"
source = {
   url = "http://www.pjb.com.au/comp/lua/MIDI-4.1.tar.gz",
   md5 = "d6bb438ad368d256b93168a7f2d1e215"
}
description = {
   summary = "Reading, writing and manipulating MIDI data",
   detailed = [[
      This module offers functions for handling MIDI files, with
      operations such as concatenating, merging an searching through
      scores; and converting to and from MIDI, and the Score and Opus
      structures inspired by Sean Burke's MIDI-Perl CPAN module.
   ]],
   homepage = "http://www.pjb.com.au/comp/lua/MIDI.html",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["MIDI"] = "MIDI.lua"
   },
   copy_directories = { "doc", "test" }
}
