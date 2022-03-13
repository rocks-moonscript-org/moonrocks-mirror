package = "lua-resty-postgres-client"
version = "0.1.0-0"
source = {
   url = "git://github.com/RunnningPig/lua-resty-postgres-client",
   tag = "v0.1.0"
}

description = {
   summary = "Wrapper for pgmoon, easy to use",
   homepage = "https://github.com/RunnningPig/lua-resty-postgres-client",
   license = "Apache License 2.0"
}

build = {
   type = "builtin",
   modules = {
      ["resty.postgres.client"] = "lib/resty/postgres/client.lua"
   }
}
