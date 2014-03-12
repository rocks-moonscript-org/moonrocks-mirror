package = "midialsa"
version = "1.04-1"
source = {
   url = "http://www.pjb.com.au/comp/lua/midialsa-1.04.tar.gz",
   md5 = "50429d6849bb196e8f4a834053020f26"
}
description = {
   summary = "Provides access to the ALSA sequencer",
   detailed = [[
      This is a call-compatible translation into Lua of the Python
      module alsaseq.py by Patricio Paez. It gives access to the ALSA
      library, offering functions client, connectfrom, connectto, fd, id,
      input, inputpending, output, start, status, stop and syncoutput,
      plus some functions to interface with the MIDI.lua module.
   ]],
   homepage = "http://www.pjb.com.au/comp/lua/midialsa.html",
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
external_dependencies = {
   ALSA = {
      header  = "alsa/asoundlib.h",
      library = "asound",
   }
}
build = {
   type = "builtin",
   modules = {
      ["midialsa"] = "midialsa.lua",
      ["C-midialsa"] = {
         sources   = { "C-midialsa.c" },
         incdirs   = { "$(ALSA_INCDIR)" },
         libdirs   = { "$(ALSA_LIBDIR)" },
         libraries = { "asound" },
      }
   },
   copy_directories = { "doc", "test" }
}
