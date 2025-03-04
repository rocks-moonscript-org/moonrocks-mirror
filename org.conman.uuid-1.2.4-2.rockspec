package = "org.conman.uuid"
version = "1.2.4-2"

source =
{
  url = "git://github.com/spc476/SPCUUID.git",
  tag = "1.2.4"
}

supported_platforms = { "unix" }

description =
{
  homepage   = "http://github.com/spc476/SPCUUID.git",
  maintainer = "Sean Conner <sean@conman.org>",
  license    = "LGPL",
  summary    = "A Lua module to generate UUIDs",
  detailed   = [[
	org.conman.uuid provides functionality to generate UUIDs based on
	RFC-4122.  It supports MAC/timed based UUIDs (v1), name-based UUIDs
	(v3/MD5,v5/SHA-1) and random UUIDs (v4).
  ]]
}

dependencies = 
{
  "lua >= 5.1, < 5.3"
}

build =
{
  type            = "make",
  build_target    = "lua",
  install_target  = "install-lua",

  build_variables =
  {
    CC         = "$(CC) -std=c99",
    CFLAGS     = "$(CFLAGS)",
    LUA_INCDIR = "$(LUA_INCDIR)"
  },

  install_variables =
  {
    LUALIB = "$(LIBDIR)"
  },
}
