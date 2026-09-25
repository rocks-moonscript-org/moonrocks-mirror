rockspec_format = "3.0"
package = "panto-popular-themes"
version = "0.1.1-1"

source = {
   url = "git+https://code.tjp.lol/public/panto-popular-themes.git",
   tag = "v0.1.1",
}

description = {
   summary = "Popular terminal themes for pantograph",
   detailed = [[
An out-of-tree panto extension registering the popular palettes shipped by
pantograph, plus Kanagawa Wave, Dragon, and Lotus.
]],
   homepage = "https://code.tjp.lol/public/panto-popular-themes",
   license = "MIT",
   labels = { "panto", "pantograph", "theme", "themes", "terminal" },
}

dependencies = {
   "lua >= 5.1",
}

build = {
   type = "builtin",
   modules = {
      ["panto-popular-themes"] = "panto-popular-themes/init.lua",
   },
}
