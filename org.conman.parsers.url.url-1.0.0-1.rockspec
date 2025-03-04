package = "org.conman.parsers.url.url"
version = "1.0.0-1"

source =
{
  url = "https://raw.github.com/spc476/LPeg-Parsers/urlurl-1.0.0/url/url.lua"
}

description =
{
  homepage = "https://github.com/spc476/LPeg-Parsers",
  maintainer = "Sean Conner <sean@conman.org>",
  license = "LGPL",
  summary = [[Parse "http:", "https:", "file:" and "ftp:" URLs]],
  detailed = [[
  	Parse "http:", "https:", "file:" and "ftp:" URLs into a Lua table. 
  	It can handle other URLs but further processing may be required if
  	so.
  	]],
}

dependencies =
{
  "lua",
  "lpeg >= 1.0.1",
}

build =
{
  type = "none",
  copy_directories = {},
  install =
  {
    lua =
    {
      ['org.conman.parsers.url.url'] = "url.lua"
    }
  }
}
