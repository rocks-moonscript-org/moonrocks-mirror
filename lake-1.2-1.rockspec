package = 'lake'

version = '1.2-1'

source = {
    url = "http://stevedonovan.github.com/files/lake-1.2-core.zip",
    dir = 'Lake'
}

description = {
    summary = 'A Lua-based Build Tool',
    detailed = [[
lake is a build engine in Lua, which directly executes
dependency rules. Provides cross-platform support for both GCC
and MSVC compilers, particularly for building Lua C
extensions.
    ]],
    license = 'MIT/X11',
    homepage = "http://stevedonovan.github.com/lake/",
    maintainer = "steve.j.donovan@gmail.com"
}

dependencies = {
    "luafilesystem"
}

build = {
    type = 'none',
    install = {
        bin = {'lake' }
    }
}
