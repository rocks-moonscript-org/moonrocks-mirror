package = "luacov-reporter-gcovr"
version = "0.0.5-2"

source = {
    url = "https://buffering.party/software/luacov-reporter-gcovr/luacov-reporter-gcovr-0.0.5.tar.gz",
    dir = "src",
}

description = {
    summary = "A luacov reporter that generates gcovr JSON traces",
    homepage = "https://buffering.party/software/luacov-reporter-gcovr/",
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
