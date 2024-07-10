rockspec_format = "3.0"
package = "peagisub"
version = "1.0.0-2"
source = {
   url = "git+https://github.com/sosie-js/peagisub-vs",
   tag = "v1.1.0"
}
description = {
   summary = "The lua helper to configure the aegisub-vapoursynth python bridge aegisub-vs.py",
   detailed = [[
        This package is my contribution to Arch1t3cht's aegisub fork.
    ]],
   homepage = "https://sosie.sos-productions.com",
   license = "MIT",
   issues_url = "https://github.com/sosie-js/peagisub-vs/issues",
   labels = {
      "aegisub",
      "vapoursynth",
      "lua",
      "python"
   },
   maintainer = "SoSie <sosie@sos-productions.com>"
}
dependencies = {
   "lua >= 5.1, < 5.5"
}
build = {
   type = "builtin",
   modules = {
      peagisub = "src/main.lua"
   },
   copy_directories = {
      "doc"
   }
}
test_dependencies = {
   "luaunit >= 3.4"
}
