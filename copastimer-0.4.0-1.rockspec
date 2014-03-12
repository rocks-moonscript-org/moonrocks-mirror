package = "CopasTimer"
version = "0.4.0-1"
source = {
   url = "https://github.com/downloads/Tieske/CopasTimer/copastimer-0.4.0-1.tar.gz",
   dir = "copastimer-0.4.0",
}
description = {
   summary = "Copas add-on to provide timers and background tasks",
   detailed = [[
      Copas Timer is a module that adds a timer capability to the
      Copas scheduler. It provides the same base functions step and
      loop as Copas (it actually replaces them) except that it will
      also check for (and run) timers expiring and run background
      workers if there is no IO or timer to handle. It also adds an
      isexiting field that allows for a controlled exit from the
      loop.
   ]],
   license = "MIT/X11",
   homepage = "http://www.thijsschreijer.nl/blog/?page_id=537"
}
dependencies = {
   "copas >= 1.1.6",
}
build = {
   type = "builtin",
   modules = { copastimer = "source/copastimer.lua" }
}
