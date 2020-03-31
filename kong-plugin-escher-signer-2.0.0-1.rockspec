package = "kong-plugin-escher-signer"
version = "2.0.0-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git+https://github.com/emartech/kong-plugin-escher-signer.git",
  tag = "2.0.0"
}
description = {
  summary = "Escher signer plugin for Kong API gateway",
  homepage = "https://github.com/emartech/kong-plugin-escher-signer",
  license = "MIT"
}
dependencies = {
  "lua ~> 5.1",
  "classic 0.1.0-1",
  "escher 0.4.0-1",
  "kong-lib-logger >= 0.3.0-1",
  "lua-easy-crypto 1.0.0"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.escher-signer.api"] = "kong/plugins/escher-signer/api.lua",
    ["kong.plugins.escher-signer.daos"] = "kong/plugins/escher-signer/daos.lua",
    ["kong.plugins.escher-signer.handler"] = "kong/plugins/escher-signer/handler.lua",
    ["kong.plugins.escher-signer.signature_generator"] = "kong/plugins/escher-signer/signature_generator.lua",
    ["kong.plugins.escher-signer.encrypter"] = "kong/plugins/escher-signer/encrypter.lua",
    ["kong.plugins.escher-signer.schema"] = "kong/plugins/escher-signer/schema.lua",
    ["kong.plugins.escher-signer.migrations.000_base_escher_signer"] = "kong/plugins/escher-signer/migrations/000_base_escher_signer.lua",
    ["kong.plugins.escher-signer.migrations.init"] = "kong/plugins/escher-signer/migrations/init.lua"
  }
}
