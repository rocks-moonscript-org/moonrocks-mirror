rockspec_format = "3.0"
package = "bcryptlua"
version = "0.1.1-1"

source = {
   url = "git+https://github.com/Ludi-Framework/bcryptlua.git",
   tag = "v0.1.1"
}

description = {
   summary = "bcrypt password hashing for Lua, powered by Rust",
   detailed = [[
      Safe bcrypt password hashing with a two-function API: hash and
      verify (plus cost, for rehash-on-login checks). The implementation
      is a native module written in Rust: OS CSPRNG salts, constant-time
      verification, no C-string truncation pitfalls. Generates standard
      $2b$ hashes and verifies $2a$/$2x$/$2y$ ones, so password
      databases from PHP, Python or Node keep working.
   ]],
   homepage = "https://github.com/Ludi-Framework/bcryptlua",
   license = "MIT"
}

dependencies = {
   "lua >= 5.1"
}

build_dependencies = {
   "luarocks-build-rust-mlua"
}

test_dependencies = {
   "busted"
}

test = {
   type = "busted"
}

build = {
   type = "rust-mlua",
   modules = {
      "bcryptlua_core"
   },
   install = {
      lua = {
         ["bcryptlua"] = "bcryptlua.lua"
      }
   }
}
