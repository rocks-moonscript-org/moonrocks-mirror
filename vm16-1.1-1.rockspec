package = "vm16"
version = "1.1-1"
source = {
    url = "git+https://github.com/joe7575/vm16.git"
}

description = {
    summary = "Virtual machine for the Minetest PDP13 mod",
    detailed = [[
        VM16 is a 16-bit virtual machine to implement real working
        computers in Minetest. The mod PDP13 [pdp13] is an example."
    ]],
    homepage = "https://github.com/joe7575/vm16",
    license = "GPLv3"
}

dependencies = {
   "lua == 5.1"
}

build = {
    type = "builtin",
    modules = {
        vm16 = "src/api.lua",  
        vm16lib = {"src/vm16core.c", "src/vm16lua.c"},
    }
}
