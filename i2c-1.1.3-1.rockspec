package = 'i2c'
version = '1.1.3-1'
source = {
    url = 'git://github.com/mrpace2/lua-i2c',
    tag = 'v1.1.3'
}
description = {
    summary = 'I2C Lua binding',
    detailed = 'This is the Lua I2C binding. This binding provides access from Lua scripts to I2C slave devices on I2C busses supported by the Linux kernel.',
    homepage = 'https://github.com/mrpace2/lua-i2c',
    license = 'MIT'
}
dependencies = {
    'lua >= 5.1'
}
build = {
    type = 'builtin',
    modules = {
        i2c = 'lua-i2c.c'
    },
    copy_directories = { 
        'examples'
    }
}
