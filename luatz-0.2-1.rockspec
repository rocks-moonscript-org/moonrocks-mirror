package = "luatz"
version = "0.2-1"
source = {
   url = "https://github.com/daurnimator/luatz/archive/v0.2.tar.gz",
   md5 = "81e43a78e5626a2d27c447823e8542ab",
   dir = "luatz-0.2"
}
description = {
   summary = "This is a lua library for time and date manipulation.",
   detailed = [[
		This is a lua library for time and date manipulation.

		Importantly, it allows you to convert time between locations (time zones).
	]],
   license = "MIT/X11"
}
dependencies = {
   "lua >= 5.1", "lua < 5.3"
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
