package = "Nancy"
version = "549-1"
source = {
   url = "http://rrt.sc3d.org/Software/Nancy/nancy-549.tar.gz"
}
description = {
   summary = "A simple web site builder",
   detailed = [[
      Nancy is a simple web site builder, using just four simple commands
      to weave fragments of HTML, CSS, Javascript and whatever else you
      like into a web site. Using Nancy you can build pretty much any web
      site whose logical structure mirrors its URL layout, and which does
      not rely on dynamically computed content.
   ]],
   license = "GNU General Public License",
   homepage = "http://rrt.sc3d.org/Software/Nancy/"
}
dependencies = {
   "lua >= 5.1",
   "stdlib >= 4"
}
build = {
   type = "none",
   install = {
      bin = {
         "nancy"
      }
   }
}
