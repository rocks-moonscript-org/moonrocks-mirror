package = 'lua-mqtt'
version = '0.1.0-1'
source = {
    url = 'https://framagit.org/fperrad/lua-mqtt/raw/releases/lua-mqtt-0.1.0.tar.gz',
    md5 = '81920945650786d82a83ba78996277e0',
    dir = 'lua-mqtt-0.1.0',
}
description = {
    summary = "client library for MQTT 3.1.1 & 5",
    detailed = [[
Client library for [MQTT](https://mqtt.org/) 3.1.1 & 5.
]],
    homepage = 'https://fperrad.frama.io/lua-mqtt',
    maintainer = 'Francois Perrad',
    license = 'MIT/X11'
}
dependencies = {
    'lua >= 5.3',
}
build = {
    type = 'builtin',
    modules = {
        mqtt331 = 'src/mqtt311.lua',
        mqtt5   = 'src/mqtt5.lua',
    },
    copy_directories = { 'docs', 'test311', 'test5' },
}
