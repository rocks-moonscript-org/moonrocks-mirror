package = "lua-argparse"
version = "0.1.1-1"
source = {
    url = "git+https://github.com/SirZenith/lua-argparse.git",
    tag = version
}
description = {
    detailed = [[A simple command line argument parsing script.]],
    homepage = "https://github.com/SirZenith/lua-argparse",
    license = "MIT/X11"
}
dependencies = {
    "lua >= 5.1, < 5.5"
}
build = {
    type = "builtin",
    modules = {
        argparse = "argparse.lua"
    }
}
