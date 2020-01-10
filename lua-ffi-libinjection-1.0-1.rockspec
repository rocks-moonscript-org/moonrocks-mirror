package = "lua-ffi-libinjection"
version = "1.0-1"
source = {
  url = "git://github.com/polaristech-io/lua-ffi-libinjection.git",
  tag = "v1.0"
}
description = {
    summary = "LuaJIT FFI bindings to libinjection — SQL / SQLI / XSS tokenizer parser analyzer",
    detailed = "lua-resty-injection is a SQL / SQLI / XSS tokenizer parser analyzer.",
    homepage = "https://github.com/bungle/lua-resty-injection",
    maintainer = "Aapo Talvensaari <aapo.talvensaari@gmail.com>",
    license = "BSD"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      ["resty.injection"] = "lib/resty/injection.lua"
   }
}