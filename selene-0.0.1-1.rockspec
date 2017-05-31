package = "selene"
version = "0.0.1-1"

source = {
  url = "git://github.com/zinenko/selene.git"
}

description = {
  summary = "Data structures implementations",
  homepage = "https://github.com/zinenko/selene",
  maintainer = "Andrey Zinenko <andrew@izinenko.ru>",
  license = "MIT"
}

dependencies = {
  "lua >= 5.0"
}

build = {
  type = "builtin",

  modules = {
    ["selene"] = "selene.lua"
  }
}
