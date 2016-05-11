package = 'coronalog'
version = '1.0-0'
source = {
  url = 'git://github.com/tyrondis/coronalog',
  tag = 'v1.0'
}
description = {
  summary = 'A simple logging library for Corona SDK',
  license = 'MIT'
}
dependencies = {
  'lua ~> 5.1'
}
build = {
  type = 'builtin',
  modules = {
    coronalog = 'coronalog.lua'
  }
}
