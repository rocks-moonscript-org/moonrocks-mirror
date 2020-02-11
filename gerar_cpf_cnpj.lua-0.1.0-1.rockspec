package = "gerar_cpf_cnpj.lua"
version = "0.1.0-1"
source = {
   url = "https://github.com/lsevero/gerar_cpf_cnpj.lua"
}
description = {
   homepage = "https://github.com/lsevero/gerar_cpf_cnpj.lua",
   license = "The Unlicense"
}
dependencies = {
   "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      gerar_cpf_cnpj = "gerar_cpf_cnpj.lua"
   }
}
