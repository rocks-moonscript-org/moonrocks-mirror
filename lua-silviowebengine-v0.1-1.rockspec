package = "Lua-SilvioWebEngine"
version = "v0.1-1"

source = {
   url = "git://github.com/SilvioNetoesBrasil//SilvioWebEngine.git", -- Substitua pelo seu repositório
   tag = "v0.1-1"
}

description = {
   summary = "Motor de renderização SilvioWebEngine e navegador SilvioWeb Browser em Lua e C++.",
   homepage = "https://github.com/SilvioNetoesBrasil/SilvioWebEngine", -- Substitua pela sua homepage
   license = "MIT" -- Ou a licença que você escolher
}

dependencies = {
   "lua >= 5.1"
}

build = {
   type = "make",
   variables = {
      LUA_INCDIR = "$(LUA_INCDIR)",
      LUA_LIBDIR = "$(LUA_LIBDIR)"
   },
   install_variables = {
      INST_PREFIX = "$(PREFIX)",
      INST_BINDIR = "$(BINDIR)",
      INST_LIBDIR = "$(LIBDIR)",
      INST_LUADIR = "$(LUADIR)"
   }
}
