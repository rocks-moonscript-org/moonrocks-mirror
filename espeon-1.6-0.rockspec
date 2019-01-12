package = 'espeon'
version = '1.6-0'
source = {
  url = 'https://github.com/ryanplusplus/espeon/archive/v1.6-0.tar.gz',
  dir = 'espeon-1.6-0'
}
description = {
  summary = 'Tool for working with ESP8266/ESP32 + NodeMCU projects',
  homepage = 'https://github.com/ryanplusplus/espeon',
  license = 'MIT'
}
dependencies = {
  'amalg == 0.4-1',
  'lua >= 5.1',
  'datafile == 0.4-1'
}
build = {
  type = 'builtin',
  modules = {
    ['espeon.command.console'] = 'espeon/command/console.lua',
    ['espeon.command.erase'] = 'espeon/command/erase.lua',
    ['espeon.command.flash'] = 'espeon/command/flash.lua',
    ['espeon.command.format'] = 'espeon/command/format.lua',
    ['espeon.command.fs'] = 'espeon/command/fs.lua',
    ['espeon.command.init'] = 'espeon/command/init.lua',
    ['espeon.command.install_dependencies'] = 'espeon/command/install_dependencies.lua',
    ['espeon.command.reset'] = 'espeon/command/reset.lua',
    ['espeon.command.upload'] = 'espeon/command/upload.lua',
    ['espeon.espeon'] = 'espeon/espeon.lua',
    ['espeon.util.amalg'] = 'espeon/util/amalg.lua',
    ['espeon.util.build_lfs'] = 'espeon/util/build_lfs.lua',
    ['espeon.util.compile'] = 'espeon/util/compile.lua',
    ['espeon.util.detect_platform'] = 'espeon/util/detect_platform.lua',
    ['espeon.util.detect_serial_port'] = 'espeon/util/detect_serial_port.lua',
    ['espeon.util.exec'] = 'espeon/util/exec.lua',
    ['espeon.util.load_config'] = 'espeon/util/load_config.lua',
    ['espeon.util.read_file'] = 'espeon/util/read_file.lua',
    ['espeon.util.shell'] = 'espeon/util/shell.lua'
  },
  install = {
    bin = {
      ['espeon'] = 'bin/espeon'
    }
  },
  copy_directories = {
    'res'
  }
}
