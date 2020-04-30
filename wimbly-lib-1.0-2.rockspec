package = "wimbly-lib"
version = "1.0-2"

source = {
   url = "git://github.com/cdrubin/wimbly-lib",
   tag = "1.0-2"
}

description = {
  summary = "Convenience code from the wimbly project.",
  detailed = "Convenience code from the wimbly project.",
  homepage = "http://github.com/cdrubin/wimbly-lib", -- We don't have one yet,
  license = "MIT"
}
  
dependencies = {
  "lua >= 5.1, < 5.4",
}
  
build = {
  type = "none"
}
