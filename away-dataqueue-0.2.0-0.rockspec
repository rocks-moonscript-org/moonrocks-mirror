package = "away-dataqueue"
version = "0.2.0-0"
source = {
   url = "git+https://github.com/thislight/away-dataqueue.git",
   tag = "v0.2.0-0"
}
description = {
   summary = "general purpose asynchronous data queue for away",
   homepage = "https://github.com/thislight/away-dataqueue",
   license = "GPL-3"
}
dependencies = {
   "away >=0.1.3, <1"
}
build = {
   type = "builtin",
   modules = {
      ["away.dataqueue"] = "away/dataqueue.lua"
   }
}
