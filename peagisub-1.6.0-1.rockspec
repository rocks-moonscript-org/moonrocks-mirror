rockspec_format = "3.0"
package = "peagisub"
version = "1.6.0-1"
source = {
   url = "git+https://github.com/sosie-js/peagisub-vs",
   tag = "v1.6.0"
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
   "lua-path >= 0.3.1",
   "luaposix >= 36.2.1",
   "luarocks >=  3.11.1",
   "optparse >=  1.5",
   "luasec >= 1.1",
   "ldoc >= 1.5.0"
}
build = {
   type = "builtin",
   modules = {
      ["peagisub"                 ] = "src/peagisub.lua",
      ["aegisub"                   ] = "src/aegisub.lua"
   },
   install= {
	bin = {
	  ["peagisub"] = "src/peagisub"
	} 
    },
    copy_directories = {"config","doc" }
}
test_dependencies = {
   "luaunit >= 3.4"
}
