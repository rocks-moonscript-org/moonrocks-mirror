package = "busted-hjtest"
version = "0.0.1-1"
source = {
   url = "git@github.com:Kong/busted-hjtest.git",
   tag = "0.0.1"
}
description = {
   summary = "The busted output handler that conbine htest and junit.",
   license = "Apache 2.0",
   homepage = "https://github.com/Kong/busted-hjtest"
}
dependencies = {

}
build = {
   type = "builtin",
   modules = {
     ["busted.outputHandlers.hjtest"] = "src/busted/outputHandlers/hjtest.lua",
   }
}