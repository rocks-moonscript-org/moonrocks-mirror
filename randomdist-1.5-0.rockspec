package = "randomdist"
version = "1.5-0"
source = {
   url = "http://www.pjb.com.au/comp/lua/randomdist-1.5.tar.gz",
   md5 = "4b1589d8735b231d4da7332a7f7c9461"
}
description = {
   summary = "a few simple procedures for generating random numbers.",
   detailed = [[
    local R = require 'randomdist' ;

    -- Gaussian (or Normal) Distribution
    grand1 = R.new_grand(10,3)
    grand2 = R.new_grand(100,3)
    for i = 1,20 do print( grand1(), grand2() ) end

	-- Gaussian Random Ensemble
    gue_irand1 = R.new_gue_irand(4)
    gue_irand2 = R.new_gue_irand(20)
    for i = 1,20 do print( gue_irand1(), gue_irand2() ) end

    -- Rayleigh Distribution
    for i = 1,20 do print(R.rayleigh_rand(3)) end

    -- random get from an array
    a = {'cold', 'cool', 'warm', 'hot'}
    for i = 1,20 do print(R.randomget(a)) end
   ]],
   homepage = "http://pjb.com.au/comp/lua/randomdist.html",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4",
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
      ["randomdist"] = "randomdist.lua",
--    ["C-readkey"] = {
--       sources   = { "C-readkey.c" },
--         incdirs   = { "$(ALSA_INCDIR)" },
--         libdirs   = { "$(ALSA_LIBDIR)" },
--         libraries = { "asound" },
--    }
   },
   copy_directories = { }  -- { "doc", "test" }
}
