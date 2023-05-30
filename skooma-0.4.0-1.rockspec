package = "skooma"
version = "0.4.0-1"
source = {
   url = "git+http://git@github.com/darkwiiplayer/skooma",
   tag = "v0.4.0"
}
description = {
   summary = "A library for generating HTML functionally",
   detailed = [[
		Allows HTML and XML structures to be built from pure functions that return nodes which can easily be modified before serialising.
	]],
   homepage = "https://github.com/darkwiiplayer/skooma",
   license = "Public Domain"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      skooma = "skooma/init.lua",
      ["skooma.dom"] = "skooma/dom.lua",
      ["skooma.env"] = "skooma/env.lua",
      ["skooma.html"] = "skooma/html.lua",
      ["skooma.serialise"] = "skooma/serialise.lua",
      ["skooma.slotty"] = "skooma/slotty.lua",
      ["skooma.xml"] = "skooma/xml.lua"
   }
}
