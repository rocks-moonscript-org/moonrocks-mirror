package = "luaec25519"
version = "0.5-1"
source = {
   url = "git://github.com/ssmmxx/lua-ec25519",
   tag = "v0.1",
}
description = {
   summary = "A simple binding to the NaCl crypto library.",
   detailed = [[
        This is simple tweetnacl wrapper to generate curve25519 keypairs
   ]],
   homepage = "https://github.com/ssmmxx/lua-ec25519",
   license = "MIT",
}
supported_platforms = {
	"linux",
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      luaec25519 = {"luaec25519.c", "tweetnacl.c", "randombytes.c"},
   }
}
