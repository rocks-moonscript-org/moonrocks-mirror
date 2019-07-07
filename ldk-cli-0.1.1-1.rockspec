rockspec_format = '3.0'

package = 'ldk-cli'
version = '0.1.1-1'
source = {
  url = 'git://github.com/luadevkit/ldk-cli.git',
  branch = '0.1.1'
}
description = {
  summary = 'LDK - command line parsing',
  license = 'MIT',
  maintainer = 'info@luadevk.it'
}
dependencies = {
  'lua >= 5.3',
  'luadevkit/ldk-checks ~> 0.2'
}
build = {
  modules = {
    ['ldk.cli'] = 'src/ldk/cli.lua',
    ['ldk.cli.cmd'] = 'src/ldk/cli/cmd.lua',
    ['ldk.cli.flag'] = 'src/ldk/cli/flag.lua',
    ['ldk.cli.help'] = 'src/ldk/cli/help.lua',
    ['ldk.cli.parser'] = 'src/ldk/cli/parser.lua',
    ['ldk.cli.reader'] = 'src/ldk/cli/reader.lua',
    ['ldk.cli.schema'] = 'src/ldk/cli/schema.lua',
    ['ldk.cli.util'] = 'src/ldk/cli/util.lua'
  }
}
test = {
  type = 'busted'
}
