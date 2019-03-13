package = "kong-plugin-escher-signer"
version = "1.1.1-1"
supported_platforms = {"linux", "macosx"}
source = {
  url = "git+https://github.com/emartech/kong-plugin-escher-signer.git",
  tag = "1.1.1"
}
description = {
  summary = "Escher signer plugin for Kong API gateway",
  homepage = "https://github.com/emartech/kong-plugin-escher-signer",
  license = "MIT"
}
dependencies = {
  "lua ~> 5.1",
  "classic 0.1.0-1",
  "escher 0.2-17",
  "kong-lib-logger >= 0.3.0-1",
  "lua-easy-crypto 1.0.0"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.escher-signer.handler"] = "kong/plugins/escher-signer/handler.lua",
    ["kong.plugins.escher-signer.signature_generator"] = "kong/plugins/escher-signer/signature_generator.lua",
    ["kong.plugins.escher-signer.encrypter"] = "kong/plugins/escher-signer/encrypter.lua",
    ["kong.plugins.escher-signer.schema"] = "kong/plugins/escher-signer/schema.lua",
  }
}
