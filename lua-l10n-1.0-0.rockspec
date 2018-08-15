package = [[lua-l10n]]
version = [[1.0-0]]
source = {
  url = [[git://github.com/develCuy/lua-l10n.git]],
  tag = [[1.0-1]],
}
description = {
  summary = [[Localization (l10n) for the Lua language.]],
  homepage = [[https://github.com/develCuy/lua-l10n]],
  license = [[AGPL-3]],
  maintainer = [[Fernando Paredes Garcia <fernando@develcuy.com>]],
}
dependencies = {
  [[lua >= 5.1]],
}
build = {
  type = [[builtin]],
  modules = {
    l10n = [[l10n.lua]],
  },
}
