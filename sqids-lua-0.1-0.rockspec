package = "sqids-lua"
version = "0.1-0"
source = {
   url = "git://github.com/sqids/sqids-lua"
}
description = {
   summary = "Sqids (pronounced \"squids\") is a small library that lets you generate YouTube-looking IDs from numbers.",
   detailed = "Sqids (pronounced \"squids\") is a small library that lets you generate YouTube-looking IDs from numbers. It's good for link shortening, fast & URL-safe ID generation and decoding back into numbers for quicker database lookups.",
   homepage = "*** please enter a project homepage ***",
   license = "*** please specify a license ***"
}
dependencies = {
   "lua >= 5.1",
   "lua-cjson"
}
build = {
   type = "builtin",
   modules = {
      sqids = "sqids.lua"
   }
}
