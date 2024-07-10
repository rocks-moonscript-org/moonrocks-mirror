package = 'lua-LIVR-extra'
version = '0.3.0-1'
source = {
    url = 'https://framagit.org/fperrad/lua-LIVR-extra/raw/releases/lua-livr-extra-0.3.0.tar.gz',
    md5 = '02c5c66b35089a1826294ba5821e45ee',
    dir = 'lua-LIVR-extra-0.3.0',
}
description = {
    summary = "more LIVR rules",
    detailed = "see <https://livr-spec.org>",
    homepage = 'https://fperrad.frama.io/lua-LIVR-extra',
    maintainer = 'Francois Perrad',
    license = 'MIT/X11'
}
dependencies = {
    'lua >= 5.1',
    'lua-livr >= 0.4.0',
}
build = {
    type = 'builtin',
    modules = {
        ['LIVR.Rules.Extra']        = 'src/LIVR/Rules/Extra.lua',
    },
    copy_directories = { 'docs', 'test' },
}
