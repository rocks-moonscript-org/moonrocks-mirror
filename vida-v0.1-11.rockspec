package = "Vida"
version = "v0.1-11"

source = {
    url = 'https://github.com/nwhitehead/vida/archive/v0.1-11.tar.gz',
    dir = 'vida-0.1-11'
}

description = {
    summary = "Mix C code into your LuaJIT code seamlessly.",
    detailed = [[
        Vida is a Lua module that allows you to include C code and
        call it right from your Lua code without messing around with
        makefiles, compilers, or any other nonsense. Requires LuaJIT.
    ]],
    homepage = "https://github.com/nwhitehead/vida",
    license = "MIT <http://opensource.org/licenses/MIT>"
}

dependencies = {
    "lua ~> 5.1"
}

build = {
    type = 'builtin',
    modules = {
        vida = "output/vida.lua"
    }
}
