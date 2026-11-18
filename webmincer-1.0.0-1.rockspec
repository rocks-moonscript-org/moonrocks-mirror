rockspec_format = '3.0'
package = 'WebMinCer'
version = '1.0.0-1'
source = {
    url = 'git+https://codeberg.org/fita-slovo/lua-webmincer',
    tag = 'v1.0'
}
description = {
    summary = 'HTML, CSS, JS, XML and JSON minification',
    detailed = [[
        Web content minifier available as a Lua module,
        based on WebMinCer program written in C.
    ]],
    homepage = 'https://codeberg.org/fita-slovo/lua-webmincer',
    license = '0BSD',
    labels = {'web', 'xml', 'html', 'json'}
}
dependencies = {
    'lua >= 5.3'
}
build = {
    type = 'builtin',
    modules = {
        webmincer = {
            sources = {
                'src/luawebmincer.c',
                'WebMinCer/src/js-mangler.c',
                'WebMinCer/src/minifier-common.c',
                'WebMinCer/src/minifier-css.c',
                'WebMinCer/src/minifier-js.c',
                'WebMinCer/src/minifier-json.c',
                'WebMinCer/src/minifier-xml-html.c',
            },
            incdirs = {'WebMinCer/src'}
        },
    },
}
