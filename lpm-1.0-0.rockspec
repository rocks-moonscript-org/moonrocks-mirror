package = 'lpm'
version = '1.0-0'
rockspec_format = '3.0'
source = {
    url = 'https://github.com/mzaini30/lpm/archive/v1.0-0.tar.gz'
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