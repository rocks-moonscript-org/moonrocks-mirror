---@diagnostic disable: lowercase-global

package = 'bawesome'
version = '0.1.0-1'
source = {
  url = 'git+https://git.sr.ht/~cdrozak/bawesome',
  tag = 'v0.1.0',
}
description = {
  homepage = 'https://sr.ht/~cdrozak/bawesome/',
  license = 'Apache-2.0',
}
dependencies = {}
build = {
  type = 'builtin',
  modules = {
    bawesome = 'src/bawesome/init.lua',
    ['bawesome.assets'] = 'src/bawesome/assets.lua',
    ['bawesome.theme'] = 'src/bawesome/theme.lua',
    ['bawesome.util'] = 'src/bawesome/util.lua',
    ['bawesome.widget'] = 'src/bawesome/widget/init.lua',
    ['bawesome.widget.task_template'] = 'src/bawesome/widget/task_template.lua',
  },
}
