package = 'rollbar-nginx'
version = '0.1.0-0'
source = {
    url = 'git://github.com/maxamante/rollbar-nginx',
    tag = '0.1.0'
}
description = {
    summary = 'A Rollbar + nginx integration',
    detailed = [[
        Use Rollbar to log issues that occur in Nginx.
    ]],
    homepage = 'https://rollbar.com/',
}
dependencies = {
    'lua >= 5.1',
    'lua-resty-http = 0.08'
}
build = {
    type = 'builtin',
    modules = {
        ['rollbar-nginx'] = 'src/rollbar-nginx.lua',
    }
}
