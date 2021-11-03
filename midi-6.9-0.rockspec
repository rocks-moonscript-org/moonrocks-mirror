package = "MIDI"
version = "6.9-0"
source = {
   url = "http://www.pjb.com.au/comp/lua/MIDI-6.9.tar.gz",
   md5 = "9435d46a4f74bcc9b7fde8e5a4c04987"
}
description = {
   summary = "Reading, writing and manipulating MIDI data",
   detailed = [[
      This module offers functions for handling MIDI files, with
      operations such as concatenating, merging and searching through
      scores; and converting to and from MIDI, and the Score and Opus
      structures inspired by Sean Burke's MIDI-Perl CPAN module.
   ]],
   homepage = "http://www.pjb.com.au/comp/lua/MIDI.html",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1, < 5.5",
}
build = {
   type = "builtin",
   modules = {
      ["MIDI"] = "MIDI.lua"
   },
   copy_directories = { "doc", "test" }
}
