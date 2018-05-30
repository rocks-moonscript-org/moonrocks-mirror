package = "pkg"
version = "0.1-0"

source = {
  url = "git://github.com/nonsensews/package",
  tag = "0.1.0",
}

description = {
  summary = "An artifact discovered full of nonsense.",
  detailed = "Research on package origin and functions are still ongoing.",
  homepage = "https://nonsense.ws",
  license = "AGPL 3"
}

dependencies = {
  "lua == 5.1",
  "argparse",
  "luasocket",
  "uuid"
}

build = {
  type = 'builtin',
  modules = {
    ['pkg.version'] = "pkg/version.lua"
  },
  install = {
    bin = {
      ['pkg'] = "pkg/cube-cli.lua"
    }
  }
}
