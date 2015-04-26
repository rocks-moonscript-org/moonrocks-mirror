package = "love-ora"
version = "0.2-1"
source = {
  url = "git://github.com/clofresh/love-ora.git",
  tag = "v0.2",
}
description = {
  summary = "A library for loading OpenRaster files into LÖVE games.",
  detailed = [[
    Having a direct export of a level you've set up in GIMP directly into LÖVE
    makes it much easier to iterate over your work. Tiled offers a similar
    workflow for tile-based games, but I couldn't find anything for setting up
    arbitrary images. Since I was already creating and laying out the level
    images in GIMP, and GIMP had such a flexible plugin system, I figured it
    would be a perfect level editor, reducing the steps to get art and level
    asserts into the game and improving the iteration feedback loop.
]],
  homepage = "https://github.com/clofresh/love-ora",
  license = "BSD"
}
dependencies = {
  "lua = 5.1",
  "xml ~> 1.1"
}
build = {
  type = 'builtin',
  modules = {
    ['ora'] = 'ora.lua'
  }
}
