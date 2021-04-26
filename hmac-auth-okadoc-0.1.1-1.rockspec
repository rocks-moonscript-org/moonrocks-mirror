package = "hmac-auth-okadoc"
version = "0.1.1-1"
source = {
   url = "git+https://github.com/fajarhide/hmac-auth-okadoc.git"
}
description = {
   homepage = "https://github.com/fajarhide/hmac-auth-okadoc",
   license = "Apache 2.0"
}
build = {
   type = "builtin",
   modules = {
      access = "src/access.lua",
      daos = "src/daos.lua",
      handler = "src/handler.lua",
      ["migrations.000_base_hmac_auth"] = "src/migrations/000_base_hmac_auth.lua",
      ["migrations.002_130_to_140"] = "src/migrations/002_130_to_140.lua",
      ["migrations.003_200_to_210"] = "src/migrations/003_200_to_210.lua",
      ["migrations.init"] = "src/migrations/init.lua",
      schema = "src/schema.lua"
   }
}
