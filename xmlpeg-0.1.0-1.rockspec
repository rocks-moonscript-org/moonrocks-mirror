rockspec_format = "3.0"
package = "xmlpeg"
version = "0.1.0-1"
source = {
   url = "https://codeberg.org/sewbacca/xmlpeg/archive/v0.1.0.zip"
}
description = {
   summary = "XML/html parser using lpeg(label).",
   homepage = "https://codeberg.org/sewbacca/xmlpeg",
   license = "MIT"
}
dependencies = {
   "lpeglabel ~> 1"
}
build = {
   type = "builtin",
   modules = {
      xmlpeg = "lua/xmlpeg.lua"
   }
}
test_dependencies = {
   "sfs scm-0",
   "ansicolors ~> 1"
}
test = {
   script = "test.lua"
}
