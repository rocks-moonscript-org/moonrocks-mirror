package = 'lua-resty-oakrouting'
version = '0.2.0-1'

source = {
    url = 'git://github.com/apioak/lua-resty-oakrouting',
    tag = 'v0.2.0'
}

description = {
    summary = 'The APIOAK Routing component',
    homepage = 'https://github.com/apioak/lua-resty-oakrouting',
    license = 'Apache License 2.0',
    maintainer = "Janko <shuaijinchao@gmail.com>"
}

dependencies = {
    'lua >= 5.1',
}

build = {
    type = 'builtin',
    modules = {
        ['resty.oakrouting'] = 'lib/resty/oakrouting.lua',
    }
}
