package = "numextra"
version = "0.2-1"

source = {
    url = "https://bitbucket.org/lucashnegri/numextra/get/v0.2.tar.bz2",
    md5 = "91f5731717729b709dafc9c5edce14f5",
    dir = "lucashnegri-numextra-cf263f7ec383",
}

description = {
    summary    = "Complementary functions for Numeric Lua",
    detailed   = [[
    Numeric Extra is a collection of complementary functions
    for Numeric Lua. It currently provides:
    1. Basic statistical functions like var, corr, std, ..., 
    principal component analysis and linear discriminant analysis;
    2. Least squares fitting, function minimization and ODE system solver;
    3. Additional functions to ease matrix handling;
    ]],
    homepage   = "https://bitbucket.org/lucashnegri/numextra",
    license    = "MIT",
    maintainer = "Lucas Hermann Negri <lucashnegri@gmail.com>",
}

dependencies = {
    "lua == 5.1", "numlua >= 0.3"
}

build = {
    type = "builtin",
    modules = {
        ["numextra"]        = "numextra.lua",
        ["numextra.matrix"] = "numextra/matrix.lua",
        ["numextra.num"]    = "numextra/num.lua",
        ["numextra.stat"]   = "numextra/stat.lua",
    },
    copy_directories = {"doc/html", "examples"},
}
