package = 'lpm'
version = '0.0-1'
rockspec_format = '3.0'
source = {
    url = 'https://github.com/mzaini30/lpm/archive/v0.0-1.tar.gz',
    dir = 'lpm-0.0-1'
}
description = {
    detailed = '"npm" for Lua',
    homepage = 'https://github.com/mzaini30/lpm',
    license = 'MIT <http://opensource.org/licenses/MIT>'
}
test = {
}
test_dependencies = {
}
build = {
    type = 'builtin',
    install = {
        bin = {
          ['lpm'] = 'lpm.lua'
        }
    }
}
-- dependencies harus paling bawah
dependencies = {
}