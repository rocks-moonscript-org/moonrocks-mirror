package = "pdh"
version = "0.1.0-1"

source = {
  url = "https://github.com/moteus/lua-pdh/archive/v0.1.0.zip",
  dir = "lua-pdh-0.1.0",
}

description = {
  summary    = "Lua binding to Microsoft Performance Data Helper (PDH) library",
  homepage   = "https://github.com/moteus/lua-pdh",
  license    = "MIT/X11",
  maintainer = "Alexey Melnichuk",
}

supported_platforms = {
  "windows"
}

dependencies = {
  "lua >= 5.1, < 5.3",
}

build = {
  type = "builtin",
  copy_directories = {"examples"},
  modules = {
    [ "pdh.core"    ] = {
      sources = {
        'src/l52util.c', 'src/lpdh.c',
      };
      libraries = {'pdh', 'psapi', 'advapi32'};
    };
    [ "pdh"         ] = "lua/pdh.lua";
    [ "pdh.psapi"   ] = "lua/pdh/psapi.lua";
  }
}
