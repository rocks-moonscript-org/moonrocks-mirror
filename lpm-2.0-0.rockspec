package = 'lpm'
version = '2.0-0'
rockspec_format = '3.0'
source = {
    url = 'https://github.com/mzaini30/lpm/archive/v2.0-0.tar.gz',
    dir = 'lpm-2.0-0'
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
-- dependencies must be at the bottom
dependencies = {
}
