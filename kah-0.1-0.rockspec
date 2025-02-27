-- luarocks install kah-0.1-0.rockspec

package = "kah"
version = "0.1-0"
source = {
   url = "https://raw.githubusercontent.com/timm/kah/refs/heads/main/src/kah.lua"
}
description = {
   summary = "Incremental, explainable AI. Use current model to decide what to query next.",
   detailed = "Sequential model optimization. TPE using a Bayes classifier",
   license = "MIT",
   homepage = "https://timm.github.io/kah/"
}
build = {
   type = "builtin",
   modules = {
      kah = "kah.lua"
   },
   bin = {
      kah = "kah.lua"
   }
}

