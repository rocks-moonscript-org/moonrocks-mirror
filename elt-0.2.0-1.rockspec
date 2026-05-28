rockspec_format = '3.0'
package = 'elt'
version = '0.2.0-1'
source = {
    url = 'git+https://github.com/suy/elt',
    tag = 'v0.2.0',
    branch = 'main',
}
description = {
    summary = 'Embedded Lua Templates. A template engine for writing templates in Lua',
    detailed = [[
        Embedded Lua Templates (ELT) is a library that implements a template
        engine for writing templates using Lua features. It doesn't rely on a
        custom language for templates, and instead let's the user write normal
        Lua code for conditions, loops, function calls, etc.
    ]],
    homepage = 'https://github.com/suy/elt',
    license = 'MIT'
}
dependencies = {
    'lua >= 5.1'
}
test_dependencies = {
    'busted >= 2.2.0'
}
build = {
    type = 'builtin',
    modules = {
        elt = 'src/elt.lua'
    }
}
