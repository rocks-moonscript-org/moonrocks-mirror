package = "tsunami"
version = "0.1-0"

source = {
  url = "git://github.com/nonsensews/tsunami",
  tag = "0.1.0",
}

description = {
  summary = "Tsunami is an opinionated template for asynchronous web services.",
  detailed = "A collection of tools and templates for web services written in Python and LuaJIT build with Tornado and Turbo.",
  homepage = "https://nonsense.ws",
  license = "AGPL 3"
}

dependencies = {
  "lzmq",
  "argparse",
  "luasocket",
  "uuid"
}

build = {
  type = 'builtin',
  modules = {
    ['tsunami.version'] = "templates/version.lua"
  },
  install = {
    bin = {
      ['tsunami'] = "templates/tsunami-cli.lua"
    }
  }
}
