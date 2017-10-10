package = "otom"
version = "1.0-1"
source = {
   url = "git+https://github.com/ratanvarghese/otom.git",
   tag = "v1.0"
}
description = {
   summary = "Data structure with one-to-one mapping",
   detailed = [[
      These one-to-one maps can essentially be used in reverse: given a value, the associated key can be
      obtained easily. The client uses the one-to-one map as though it were two tables: a forward table
      associating keys with values and a reverse table associating values with keys. When a value would
      be repeated, one-to-one mapping is enforced by overwriting the old key-value association. Ordinary
      tables can be used to construct one-to-one maps: the user can configure how repeated values in the
      original table should be handled.
   ]],
   homepage = "https://github.com/ratanvarghese/otom",
   license = "MIT/X11"
}
dependencies = {
   "lua ~> 5.3"
}
build = {
   type = "builtin",
   modules = {
      otom = "otom.lua",
      otom_spec = "otom_spec.lua"
   }
}
