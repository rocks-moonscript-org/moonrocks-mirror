package = 'lua-LIVR'
version = '0.2.0-2'
source = {
    url = 'https://framagit.org/fperrad/lua-LIVR/raw/releases/lua-livr-0.2.0.tar.gz',
    md5 = '8d407381541efed867495bddc55357ef',
    dir = 'lua-LIVR-0.2.0',
}
description = {
    summary = "Lightweight validator supporting Language Independent Validation Rules Specification (LIVR)",
    detailed = "see <http://livr-spec.org>",
    homepage = 'http://fperrad.frama.io/lua-LIVR',
    maintainer = 'Francois Perrad',
    license = 'MIT/X11'
}
dependencies = {
    'lua >= 5.1',
}
build = {
    type = 'builtin',
    modules = {
        ['LIVR.Validator']          = 'src/LIVR/Validator.lua',
        ['LIVR.helpers']            = 'src/LIVR/helpers.lua',
        ['LIVR.Rules.Common']       = 'src/LIVR/Rules/Common.lua',
        ['LIVR.Rules.Meta']         = 'src/LIVR/Rules/Meta.lua',
        ['LIVR.Rules.Modifiers']    = 'src/LIVR/Rules/Modifiers.lua',
        ['LIVR.Rules.Numeric']      = 'src/LIVR/Rules/Numeric.lua',
        ['LIVR.Rules.Special']      = 'src/LIVR/Rules/Special.lua',
        ['LIVR.Rules.String']       = 'src/LIVR/Rules/String.lua',
    },
    copy_directories = { 'docs', 'test' },
}
