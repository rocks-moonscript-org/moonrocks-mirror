package = 'espeon'
version = '0.1-0'
source = {
  url = 'https://github.com/ryanplusplus/espeon/archive/v0.1-0.tar.gz',
  dir = 'espeon-0.1-0'
}
description = {
  summary = 'Tool for working with ESP8266 + NodeMCU projects',
  homepage = 'https://github.com/ryanplusplus/espeon',
  license = 'MIT'
}
dependencies = {
  'lua >= 5.1',
  'datafile == 0.4-1'
}
build = {
  type = 'builtin',
  modules = {
    ['espeon.command.bootstrap'] = 'espeon/command/bootstrap.lua',
    ['espeon.command.console'] = 'espeon/command/console.lua',
    ['espeon.command.erase'] = 'espeon/command/erase.lua',
    ['espeon.command.flash'] = 'espeon/command/flash.lua',
    ['espeon.command.flash_firmware'] = 'espeon/command/flash_firmware.lua',
    ['espeon.command.format'] = 'espeon/command/format.lua',
    ['espeon.command.init'] = 'espeon/command/init.lua',
    ['espeon.command.reset'] = 'espeon/command/reset.lua',
    ['espeon.espeon'] = 'espeon/espeon.lua',
    ['espeon.util.detect_platform'] = 'espeon/util/detect_platform.lua',
    ['espeon.util.detect_serial_port'] = 'espeon/util/detect_serial_port.lua',
    ['espeon.util.device_info'] = 'espeon/util/device_info.lua',
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
     'res',
  }
}
