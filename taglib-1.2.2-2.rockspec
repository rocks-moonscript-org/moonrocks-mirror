package = "TagLib"
version = "1.2.2-2"

source = {
  url = "https://buffering.party/software/lua-taglib/lua-taglib-1.2.2.tar.gz"
}

description = {
  summary = "Binding to TagLib Audio Meta-Data Library",
  homepage = "https://buffering.party/software/lua-taglib/",
  license = "MIT"
}

build = {
  type = "cmake",
  variables = {
    ["CMODULE_INSTALL_DIR"] = "$(LIBDIR)",
    ["LUA_INCLUDE_DIR"] = "$(LUA_INCDIR)",
    ["LUAROCKS_TAGLIB_INCLUDE_DIR"] = "$(TAGLIB_INCLUDE_DIR)",
    ["LUAROCKS_TAGLIB_LIBRARY"] = "$(TAGLIB_LIBRARY)",
    ["LUAROCKS_TAGLIB_USE_ZLIB"] = "$(TAGLIB_USE_ZLIB)",
    ["LUAROCKS_ZLIB_INCLUDE_DIR"] = "$(ZLIB_INCLUDE_DIR)",
    ["LUAROCKS_ZLIB_LIBRARY"] = "$(ZLIB_LIBRARY)",
  },
  platforms = { windows = { variables = {
    LUA_LIBRARY = "$(LUA_LIBDIR)/$(LUALIB)"
  }}}
}

dependencies = {
  "lua >= 5.1",
}

