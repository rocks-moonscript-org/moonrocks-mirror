package = "lua-nkeys"
version = "0.1.2-1"

source = {
   url = "git+https://dev.narayana.im/narayana/lua-nkeys.git",
   tag = "v0.1.2",
}

description = {
   summary = "Lua bindings for NATS nkeys (Ed25519 signing and verification)",
   detailed = [[
      Lua bindings for the NATS nkeys library, providing Ed25519 key creation,
      signing, and verification for all NATS key types (operator, account, user,
      server, cluster). Built with Go and compatible with LuaJIT and Lua 5.3.
   ]],
   homepage = "https://dev.narayana.im/narayana/lua-nkeys",
   license = "Apache-2.0",
}

dependencies = {
   "lua >= 5.1",
}

build = {
   type = "make",
   build_variables = {
      CFLAGS = "$(CFLAGS)",
   },
   install_pass = false,
   copy_directories = {},
   install = {
      lib = {
         ["nkeys"] = "nkeys.so",
      },
   },
}
