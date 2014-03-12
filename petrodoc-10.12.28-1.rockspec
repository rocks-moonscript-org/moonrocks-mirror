package = "Petrodoc"
version = "10.12.28-1"
source = {
   url = "http://spu.tnik.org/files/petrodoc-10.12.28.tar.gz",
}
description = {
   summary    = "Making Rockspecs, HTML and RSS from a single source",
   detailed   = [===[ Petrodoc allows you to use a single configuration file to generate a rockspec, 
                HTML documentation (with Luadoc) and an RSS feed for new releases.]===],
   license    =  "MIT/X11",
   homepage   = "http://spu.tnik.org/petrodoc/",
   maintainer = "Yuri Takhteyev",
}
dependencies = {
}
build = {
   type = "none",
   install = {
      bin = { "bin/petrodoc.lua" }
   }
}

