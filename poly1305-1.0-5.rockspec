package = "poly1305"
version = "1.0-5"

source = {
  url = "https://media.githubusercontent.com/media/nayutaco/poly1305.lua/caded853f6479b58de95da2031b43f79ff21e42c/releases/poly1305-1.0.tar.gz"
}

description = {
  summary = "Lua binding for https://github.com/floodyberry/poly1305-donna",
  homepage = "http://github.com/nayutaco/poly1305.lua",
  license = "MIT"
}

dependencies = {"lua == 5.2"}

build = {
  type = "builtin",
  modules = {
    poly1305 = {
      sources = {"binding.c", "poly1305-donna/poly1305-donna.c"},
      libraries = {"lua5.2"},
      incdirs = {"./poly1305-donna"}
    }
  }
}
