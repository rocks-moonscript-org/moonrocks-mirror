package = "stileweb"
version = "2.0.0-1"

source = {
   url = "git+https://github.com/SilvioNetoesBrasil/STileWeb",
   tag = "v2.0.0-1"
}

description = {
   summary = "STileWeb - Navegador simples em Lua usando WebKit2GTK",
   detailed = [[
STileWeb (SilvioTileWeb Browser) é um navegador simples
feito em Lua 5.3 usando WebKit2GTK 4.0.
   ]],
   homepage = "https://github.com/SilvioNetoesBrasil/STileWeb/raw/refs/heads/main/STileWeb-v2.0.0-1.tar.gz",
   license = "MIT"
}

dependencies = {
   "lua >= 5.3"
}

build = {
   type = "builtin",
   modules = {
      ["stileweb"] = "src/STileWeb.lua"
   },
   install = {
      bin = {
         stileweb = "stileweb"
      }
   }
}
