package = "SlowJson"
version = "1.0-1"
source = {
   url = "git+ssh://git@github.com/Yiwen-Chan/SlowJson.git"
}
description = {
   summary = "A JSON decoder and encoder written in pure Lua",
   homepage = "https://github.com/Yiwen-Chan/SlowJson",
   license = "Apache License 2.0"
}
build = {
   type = "builtin",
   modules = {
      ["SlowJson"] = "src/SlowJson.lua",
      ["SlowJson.decoder"] = "src/SlowJson/decoder.lua",
      ["SlowJson.encoder"] = "src/SlowJson/encoder.lua"
   }
}
