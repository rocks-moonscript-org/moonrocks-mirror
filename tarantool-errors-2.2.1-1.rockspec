package = 'tarantool-errors'
version = '2.2.1-1'
source = {
    url = 'git+https://github.com/tarantool/errors.git',
    branch = 'master',
}

description = {
    summary = 'Convenient error handling in tarantool',
    homepage = 'https://github.com/tarantool/errors',
    license = 'BSD',
}

dependencies = {
    'lua >= 5.1',
}

build = {
    type = 'cmake',
    variables = {
        TARANTOOL_INSTALL_LUADIR = '$(LUADIR)',
    },
}

