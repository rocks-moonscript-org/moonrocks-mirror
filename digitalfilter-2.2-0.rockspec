package = "digitalfilter"
version = "2.2-0"
source = {
   url = "http://www.pjb.com.au/comp/lua/digitalfilter-2.2.tar.gz",
   md5 = "e8757da1b64bef11a12988e9c83a9f7c"
}
description = {
   summary = "some Digital Filters - Butterworth, Chebyschev and Bessel.",
   detailed = [[
	Version 1.0 IS ONLY A PLACEHOLDER, not yet ready for use ...
    local DF = require 'digitalfilter' ;
    local my_filter = DF.new_digitalfilter ({   --returns a closure
        ['type']        = 'butterworth',
        ['order']       = 3,
        ['shape']       = 'lowpass',
        ['freq']        = 1000,
        ['samplerate']  = 32000,
    })
	for i = 1,95 do
        local u = (math.floor((i%16)/8   + 0.01)*2 - 1)  -- square wave
        local x = my_filter(u)
        if i >= 80 then print('my_filter('..u..') \t=', x) end
    end
]],
   homepage = "http://pjb.com.au/comp/lua/digitalfilter.html",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.5",
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
      ["digitalfilter"] = "digitalfilter.lua",
--    ["C-readkey"] = {
--       sources   = { "C-readkey.c" },
--         incdirs   = { "$(ALSA_INCDIR)" },
--         libdirs   = { "$(ALSA_LIBDIR)" },
--         libraries = { "asound" },
--    }
   },
   copy_directories = { }  -- { "doc", "test" }
}
