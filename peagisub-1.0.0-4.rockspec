rockspec_format = "3.0"
package = "peagisub"
version = "1.0.0-4"
source = {
   url = "git+https://github.com/sosie-js/peagisub-vs",
   tag = "v1.3.0"
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
   "lua >= 5.1, < 5.5",
   "dkjson >= 2.8",
   "lua-path >= 0.3.1"
}
build = {
   type = "command",
   build_command  = "./build-aux/luke lukefile install all",
   copy_directories = {
      "doc"
   }
}
test_dependencies = {
   "luaunit >= 3.4"
}
