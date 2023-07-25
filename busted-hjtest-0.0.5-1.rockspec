package = "busted-hjtest"
version = "0.0.5-1"
source = {
   url = "git://github.com/kong/busted-hjtest",
   tag = "0.0.5-1"
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
