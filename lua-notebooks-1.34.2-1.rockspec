package = "lua-notebooks"
version = "1.34.2-1"

source = {
  url = "git://github.com/numeric-lua/lua-notebooks",
}

description = {
  summary = "Native LÖVR notebook workspace",
  detailed = [[
    A LÖVR-hosted notebook environment with Lua kernels, 3D extension
    surfaces, widgets, luaplotlib scenes, an editor language service, and
    hierarchical notebook navigation.
  ]],
  homepage = "https://github.com/numeric-lua/lua-notebooks",
  license = "BSD-3-Clause",
}

dependencies = {
  lua = "lua >= 5.1",
}

build = {
  type = "command",
  build_command = "true",
  install_command = [[
    mkdir -p "$(PREFIX)/share/lua-notebooks/scripts" "$(PREFIX)/bin"
    cp -R conf.lua main.lua README.md LICENSE notebook kernel ui extensions assets web \
      "$(PREFIX)/share/lua-notebooks/"
    cp scripts/kernel-gateway.lua scripts/websocket.lua scripts/lsp-stdio.lua \
      "$(PREFIX)/share/lua-notebooks/scripts/"
    cp scripts/lua-notebooks "$(PREFIX)/bin/lua-notebooks"
    cp scripts/lua-notebooks-lsp "$(PREFIX)/bin/lua-notebooks-lsp"
    chmod +x "$(PREFIX)/bin/lua-notebooks" "$(PREFIX)/bin/lua-notebooks-lsp"
  ]],
}
