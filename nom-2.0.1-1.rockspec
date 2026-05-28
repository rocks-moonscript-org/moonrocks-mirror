rockspec_format = "3.0"
package = "nom"
version = "2.0.1-1"
source = {
   url = "git+https://forge.axfive.net/Taylor/lua-nom.git",
   tag = "v2.0.1"
}
dependencies = {
   -- For bitwise operations.
   'lua >= 5.3',
}
description = {
   detailed = "A clone of Rust's nom to Lua.",
   homepage = "https://forge.axfive.net/Taylor/lua-nom",
   license = "MPL-2.0"
}
build = {
   type = "builtin"
}
