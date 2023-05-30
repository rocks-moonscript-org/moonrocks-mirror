package = "luacov-reporter-gcovr"
version = "0.0.4-1"

source = {
    url = "https://github.com/jprjr/luacov-reporter-gcovr/archive/0.0.4.tar.gz",
    file = "luacov-reporter-gcovr-0.0.4.tar.gz",
}

description = {
    summary = "A luacov reporter that generates gcovr JSON traces",
    homepage = "https://github.com/jprjr/luacov-reporter-gcovr",
    license = "MIT";
}

build = {
    type = "builtin",
    modules = {
        ["luacov.reporter.gcovr"] = "src/gcovr.lua",
    }
}


dependencies = {
    "lua >= 5.1",
    "luacov",
}
