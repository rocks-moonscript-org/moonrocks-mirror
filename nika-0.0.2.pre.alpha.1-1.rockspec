package = "nika"
version = "0.0.2.pre.alpha.1-1"
source = {
  url = "git+https://github.com/zzedgat2012/nika.git",
  tag = "v0.0.2-alpha.1"
}
description = {
  summary = "Nika: framework web minimalista em Lua",
  homepage = "https://github.com/zzedgat2012/nika",
  license = "BSD-3-Clause"
}
dependencies = {
  "lua >= 5.1"
}
build = {
  type = "builtin",
  modules = {
    nika = "src/nika.lua",
    nika_io = "src/nika_io.lua",
    nika_audit = "src/nika_audit.lua",
    router = "src/router.lua",
    parser = "src/parser.lua",
    sandbox = "src/sandbox.lua",
    hooks = "src/hooks.lua",
    db = "src/db.lua",
    adapter_cgi = "src/adapter_cgi.lua",
    ["hooks.security_headers"] = "hooks/security_headers.lua"
  }
}
