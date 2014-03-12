package = "CopasTimer"
version = "1.0.0-1"
source = {
    url = "https://github.com/Tieske/CopasTimer/archive/version_1.0.0.tar.gz",
    dir = "CopasTimer-version_1.0.0"
}
description = {
    summary = "Copas add-on to provide timers, background tasks and optionally events",
    detailed = [[
      Copas Timer is a module that adds a timer capability to the
      Copas scheduler. It provides the same base functions step and
      loop as Copas (it actually replaces them) except that it will
      also check for (and run) timers expiring and run background
      workers if there is no IO or timer to handle. It also adds
      methods to allow for a controlled exit from the loop.
      As an optional component an 'eventer' is available to dispatch
      events as background tasks in Copas Timer.
    ]],
    license = "MIT/X11",
    homepage = "http://www.thijsschreijer.nl/blog/?page_id=537"
}
dependencies = {
    "coxpcall >= 1.15",
    "copas >= 1.1.6",
}
build = {
    type = "builtin",
    modules = {
        ["copas.timer"] = "source/copas/timer.lua",
        ["copas.eventer"] = "source/copas/eventer.lua",
    },
    copy_directories = { "doc", "test" },
}
