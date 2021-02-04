package = "lua-resty-secrets"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/kong/lua-resty-secrets.git",
   tag = "0.1.0"
}
description = {
   summary = "Secrets management",
   detailed = [[
      Use secrets securely stored in external vaults.
   ]],
   license = "Apache 2.0",
   homepage = "https://github.com/kong/lua-resty-secrets.git"
}
dependencies = {
   "lua-resty-aws == 0.1.0",
}
build = {
   type = "builtin",
   modules = {
      ["resty.secrets.init"]                    = "src/resty/secrets/init.lua",
      ["resty.secrets.SecretList"]              = "src/resty/secrets/SecretList.lua",
      -- backend modules:
      ["resty.secrets.backend.plain"]           = "src/resty/secrets/backend/plain.lua",
      ["resty.secrets.backend.aws-sm"]          = "src/resty/secrets/backend/aws-sm.lua",
   }
}
