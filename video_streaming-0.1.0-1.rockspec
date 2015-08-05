package = 'video_streaming'
version = '0.1.0-1'

source = {
  url = 'git://github.com/evandrolg/video-streaming.lua.git',
  tag = 'v0.1'
}

description = {
  summary = 'Library that implements MontionJPG technique using Lua and Pegasus.lua',
  homepage = 'https://github.com/EvandroLG/video-streaming.lua',
  maintainer = 'Evandro Leopoldino Gonçalves (@evandrolg) <evandrolgoncalves@gmail.com>',
  license = 'MIT <http://opensource.org/licenses/MIT>'
}

dependencies = {
  "lua >= 5.1",
  "mimetypes >= 1.0.0-1",
  "luafilesystem >= 1.6",
}

build = {
  type = "builtin",
  modules = {
    ['video_streaming'] = 'video_streaming/init.lua',
    ['video_streaming.camera']  = 'video_streaming/camera.lua',
  }
}
