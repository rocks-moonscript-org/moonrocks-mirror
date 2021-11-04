package = "modsec"
version = "0.0.1-4"
source = {
  url = "git+https://git@github.com/pr4u4t/ModSec-lighty-lua.git"
}
description = {
  homepage = "https://github.com/pr4u4t/ModSec-lighty-lua",
  license = "MIT"
}
build = {
  type = "builtin",
  modules = {
    modsec = "modsec.lua"
  }
}
