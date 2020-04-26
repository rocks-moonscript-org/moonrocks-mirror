package = "PrayTimes"
version = "2.3-3"
source = {
   url = "git://github.com/RamiLego4Game/Pray-Times-Lua",
   tag = "2.3-3"
}
description = {
   summary = "An open-source library for calculating Muslim prayers times.",
   detailed = [[
      Welcome to Pray Times, an Islamic project aimed at providing an open-source library for calculating Muslim prayers times.
      Project Source : http://praytimes.org
   ]],
   homepage = "http://praytimes.org",
   license = "GNU LGPL v3.0"
}
dependencies = {
   "lua >= 5.1, < 5.4",
   "middleclass >= 4.0, < 5.0"
}
build = {
   type = "builtin",
   modules = {
       PrayTimes = "PrayTimes.lua"
   },
   copy_directories = { "docs" }
}