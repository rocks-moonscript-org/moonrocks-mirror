rockspec_format = '3.0'

package = "tformat"
version = "1.0.0-1"
source = {
   url = "git+ssh://git@forge.axfive.net/Taylor/tformat.git",
   tag = 'v1.0.0',
}
description = {
   summary = "An extension of the native lua string.format function, allowing named arguments.",
   detailed = "An extension of the native lua string.format function, allowing named arguments, with nested replacements.",
   homepage = "https://forge.axfive.net/Taylor/tformat",
   license = "MPL-2.0",
   issues_url = 'https://forge.axfive.net/Taylor/tformat/issues',
   maintainer = 'Taylor C. Richberger <taylor@axfive.net>',
   labels = {'template'},
}
build = {
   type = "builtin",
   modules = {
      tformat = "src/tformat.lua"
   },
   install = {
      bin = {
         tformat = "bin/tformat",
      },
   },
}
