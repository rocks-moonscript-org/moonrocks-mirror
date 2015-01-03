package = "luatz"
version = "0.3-1"
source = {
   url = "https://github.com/daurnimator/luatz/archive/v0.3.tar.gz",
   md5 = "d2f8061d68e475a8c8772d782d2dc1a2",
   dir = "luatz-0.3"
}
description = {
   summary = "library for time and date manipulation.",
   detailed = [[
	A lua library for time and date manipulation.

	Features include:
	  - Normalisation of broken down date objects
	    - allows for complex time/date manipulation logic e.g. "what day is it in 2 days, 5 hours from now?"
	  - Conversion between locations (time zones) using your local zoneinfo database.
	  - stftime style formatting

	All operations are possible without C extensions, though if available they may be used to increase accuracy.
	]],
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ['luatz.gettime'] = "luatz/gettime.lua",
      ['luatz.init'] = "luatz/init.lua",
      ['luatz.parse'] = "luatz/parse.lua",
      ['luatz.strftime'] = "luatz/strftime.lua",
      ['luatz.timetable'] = "luatz/timetable.lua",
      ['luatz.tzcache'] = "luatz/tzcache.lua",
      ['luatz.tzfile'] = "luatz/tzfile.lua",
      ['luatz.tzinfo'] = "luatz/tzinfo.lua"
   }
}
