rockspec_format = "3.0"
package = "ludi"
version = "0.6.0-1"

source = {
   url = "git+https://github.com/Ludi-Framework/ludi.git",
   tag = "v0.6.0"
}

description = {
   summary = "Express-style web framework for Lua, powered by Rust (hyper + tokio)",
   detailed = [[
      Ludi is a minimal web framework with an Express/Fastify-like API.
      Routing, middlewares and handlers live in Lua; the HTTP server is a
      native module written in Rust on top of hyper and tokio.
   ]],
   homepage = "https://github.com/Ludi-Framework/ludi",
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
      "ludi_core"
   },
   install = {
      lua = {
         ["ludi"] = "ludi/init.lua",
         ["ludi.router"] = "ludi/router.lua",
         ["ludi.request"] = "ludi/request.lua",
         ["ludi.response"] = "ludi/response.lua",
         ["ludi.middleware"] = "ludi/middleware.lua",
         ["ludi.json"] = "ludi/json.lua",
         ["ludi.reload"] = "ludi/reload.lua",
         ["ludi.errfmt"] = "ludi/errfmt.lua"
      }
   }
}
