package = 'lua-mqtt'
version = '0.3.2-1'
source = {
    url = 'https://framagit.org/fperrad/lua-mqtt/raw/releases/lua-mqtt-0.3.2.tar.gz',
    md5 = '2fa806a954214de893fdf86af0f87842',
    dir = 'lua-mqtt-0.3.2',
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
