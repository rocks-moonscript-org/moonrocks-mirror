package = "app_scheduler"

version = "1.0-0"

source = {
   url = "git+https://github.com/lalawue/app_scheduler.git"
}

description = {
   summary = "Process Group Manager",
   detailed = "process group manager for app, start/stop process, monitor cpu, mem usage",
   homepage = "https://github.com/lalawue/app_scheduler",
   license = "MIT/X11"
}

dependencies = {
   "lua >= 5.2"
}

supported_platforms = {
   "macosx", "freebsd", "linux"
}

build = {
   type = "builtin",
   modules = {
      app_scheduler = "app_scheduler.lua",
   }
}
