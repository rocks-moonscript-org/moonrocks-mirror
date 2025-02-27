
package = "AbacatePaySDK"  -- Nome do seu SDK
version = "1.0-0"    -- Versão do seu SDK (major-minor-patch)

source = {
   url = "https://github.com/EricksonLOOP/abacatepay-lua-sdk/archive/refs/tags/v1.0.tar.gz",
   md5 = "" 
}

description = {
   summary = "Lua SDK for AbacatePay",
   detailed = [[
      This SDK have all files for easy integrate AbacatePay with Lua systems.
   ]],
   homepage = "https://github.com/EricksonLOOP/abacatepay-lua-sdk",  -- URL do projeto
   license = "MIT"  -- Licença do projeto
}

dependencies = {  
   "socket >= 5.1",
   "ltn12 >= 5.1",
}

build = {
   type = "builtin",
   modules = {
      AbacatePaySDK = "src/init.lua"  -- Onde o LuaRocks encontrará o código principal
   }
}
