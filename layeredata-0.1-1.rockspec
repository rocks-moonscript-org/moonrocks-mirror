package = "layeredata"
version = "0.1-1"

source = {
  url    = "git+https://github.com/cosyverif/layeredata.git",
  branch = "dev",
}

description = {
  summary     = "Layered Data",
  detailed    = [[]],
  license     = "MIT/X11",
  homepage    = "https://github.com/cosyverif/layeredata",
  maintainer  = "Alban Linard <alban@linard.fr>",
}

dependencies = {
  "lua >= 5.1",
  "c3",
  "coronest",
  "uuid",
}

build = {
  type    = "builtin",
  modules = {
    layeredata = "src/layeredata/init.lua",
  },
}
