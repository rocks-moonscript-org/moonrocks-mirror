rockspec_format = '3.0'

package = "elua"
version = "1.2.0-1"
source = {
   url = "git+ssh://git@forge.axfive.net/Taylor/elua.git",
   tag = 'v1.2.0',
}
description = {
   summary = "A simple implementation of a Lua equivalent of ERB",
   detailed = "A simple implementation of a Lua equivalent of ERB",
   homepage = "https://forge.axfive.net/Taylor/elua",
   license = "MPL-2.0",
   issues_url = 'https://forge.axfive.net/Taylor/elua/issues',
   maintainer = 'Taylor C. Richberger <taylor@axfive.net>',
   labels = {'template'},
}
build = {
   type = "builtin",
   modules = {
      elua = "src/elua.lua"
   },
   install = {
      bin = {
         elua = "bin/elua",
      },
   },
}
