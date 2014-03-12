package = 'yaml'
version = '0.2-1'
source = {
    url = 'http://files.luaforge.net/releases/yaml/yaml/0.2/yaml-0.2.tar.gz',
    md5 = '18c25a2a6609b2862e3485952cf73634',
    dir = 'yaml-0.2',
}
description = {
    summary = "Lua YAML serialization using LibYAML",
    detailed = [[
        This module is a Lua binding for Kirill Siminov's excellent LibYAML.
        LibYAML is generally considered to be the best C YAML 1.1 implementation.
    ]],
    homepage = 'http://yaml.luaforge.net/',
    maintainer = 'Francois Perrad', -- only of the rockspec
    -- the author and copyright holder of this module is Andrew Danforth
    license = 'MIT',
}
dependencies = {
    'lua ~> 5.1',
}
external_dependencies = {
    -- yaml-0.2.tar.gz contains a copy of LibYAML 0.1.3
    -- but, we build with the latest version installed
    -- with the package libyaml-dev (0.1.4 at this time)
    YAML = {
        header  = "yaml.h",
        library = "yaml",
    },
}
build = {
    type = "builtin",
    modules = {
        yaml = {
            sources = {
                "lyaml.c",
                "b64.c",
            },
            libraries = "yaml",
        },
    },
}
