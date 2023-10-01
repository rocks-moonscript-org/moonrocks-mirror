package = 'lua-mqtt'
version = '0.3.1-1'
source = {
    url = 'https://framagit.org/fperrad/lua-mqtt/raw/releases/lua-mqtt-0.3.1.tar.gz',
    md5 = 'c0da0ed5285ecd27befb6d3f48ec6fb0',
    dir = 'lua-mqtt-0.3.1',
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
