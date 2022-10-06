package = 'lua-mqtt'
version = '0.0.1-2'
source = {
    url = 'https://framagit.org/fperrad/lua-mqtt/raw/releases/lua-mqtt-0.0.1.tar.gz',
    md5 = '5fca2e9367fa6862df5453a3b12b43f7',
    dir = 'lua-mqtt-0.0.1',
}
description = {
    summary = "client library for MQTT 3.1.1 & 5",
    detailed = [[
Client library for [MQTT](https://mqtt.org/) 3.1.1 & 5.

lua-mqtt is in early stage.
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
    copy_directories = { 'test311', 'test5' },
}
