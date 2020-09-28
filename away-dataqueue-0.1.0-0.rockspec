package = "away-dataqueue"
version = "0.1.0-0"
source = {
   url = "git+https://github.com/thislight/away-dataqueue.git",
   tag = "v0.1.0",
}
description = {
   homepage = "https://github.com/thislight/away-dataqueue",
   license = "GPL-3",
   summary = "general purpose asynchronous data queue for away",
}
dependencies = {
   "away >=0.0.3, <1"
}
build = {
   type = "builtin",
   modules = {
      ['away.dataqueue'] = "away/dataqueue.lua",
      ['away.dataqueue.service'] = "away/dataqueue/service.lua",
   }
}
