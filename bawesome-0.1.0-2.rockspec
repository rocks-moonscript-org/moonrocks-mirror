---@diagnostic disable: lowercase-global

rockspec_format = '3.0'
package = 'bawesome'
version = '0.1.0-2'
source = {
  url = 'git+https://git.sr.ht/~cdrozak/bawesome',
  tag = 'v0.1.0',
}
description = {
  summary = 'Set of various widgets and variables to replicate the look and feel of BeOS and Haiku operating systems',
  homepage = 'https://sr.ht/~cdrozak/bawesome/',
  license = 'Apache-2.0',
  labels = {
    'awesome',
  },
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
