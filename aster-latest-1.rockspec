rockspec_format = "1.1"
package = "aster"
version = "latest-1"
source = {
  url = "git://github.com/axa-dev/aster",
  tag = "latest"
}
description = {
  homepage = "https://github.com/axa-dev/aster",
  license = "GPL v3"
}
dependencies = {
  "lua >= 5.1, < 5.5"
}
build = {
  type = "builtin",
  modules = {
    ['aster'] = 'src/init.lua'
  }
}
