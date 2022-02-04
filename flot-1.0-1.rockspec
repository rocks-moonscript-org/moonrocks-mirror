package = 'flot'
version = '1.0-1'
source = {url = 'git://github.com/StephenCathcart/flot.git', tag = 'v1.0'}
description = {
    summary = 'A tiny Flot plotting library for Lua.',
    detailed = [[
        Flot is a JavaScript plotting library for engineering and scientific applications derived from Flot: http://www.flotcharts.org/.
        Forked from https://github.com/stevedonovan/stevedonovan.github.com/blob/master/lua-flot/flot.lua]],
    homepage = 'https://github.com/StephenCathcart/flot',
    license = 'MIT'
}
dependencies = {'lua >= 5.1'}
build = {type = 'builtin', modules = {flot = 'flot.lua'}}
