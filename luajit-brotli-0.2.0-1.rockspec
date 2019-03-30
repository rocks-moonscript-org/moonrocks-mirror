package = "luajit-brotli"
version = "0.2.0-1"

source = {
   url = "git://github.com/sjnam/luajit-brotli",
   tag = "v0.2.0"
}

description = {
   summary = "google brotli ffi binding",
   license = "Public Domain",
   homepage = "https://github.com/sjnam/luajit-brotli",
   maintainer = "Soojin Nam <jsunam@gmail.com>"
}

build = {
   type = "builtin",
   modules = {
      ["brotli.encoder"] = "brotli/encoder.lua",
      ["brotli.decoder"] = "brotli/decoder.lua"
   }
}
