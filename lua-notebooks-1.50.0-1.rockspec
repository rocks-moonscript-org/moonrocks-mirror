package = "lua-notebooks"
version = "1.50.0-1"

source = {
  url = "git://github.com/numeric-lua/lua-notebooks",
}

description = {
  summary = "Native LÖVR notebook workspace",
  detailed = [[
    A LÖVR-hosted notebook environment with Lua kernels, 3D extension
    surfaces, widgets, luaplotlib scenes (including live polar series,
    heatmaps, contours, quiver arrows, streamlines, and colourbars with bounded
    block sampling for large fields, deterministic arrow decimation, and shared
    streamplot geometry), an editor language service, hierarchical notebook
    navigation, a navigable static HTML export with reader search and shared
    polar geometry, and a dependency-free browser front-end that renders
    Cartesian and polar scenes on Canvas with the same geometry contract.
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
    cp -R conf.lua main.lua README.md LICENSE notebook kernel ui extensions assets web webapp \
      "$(PREFIX)/share/lua-notebooks/"
    cp scripts/kernel-gateway.lua scripts/websocket.lua scripts/lsp-stdio.lua \
      "$(PREFIX)/share/lua-notebooks/scripts/"
    cp scripts/lua-notebooks "$(PREFIX)/bin/lua-notebooks"
    cp scripts/lua-notebooks-lsp "$(PREFIX)/bin/lua-notebooks-lsp"
    chmod +x "$(PREFIX)/bin/lua-notebooks" "$(PREFIX)/bin/lua-notebooks-lsp"
  ]],
}
