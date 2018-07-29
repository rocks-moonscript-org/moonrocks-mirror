package = "benchmark-ips"
local release = '0.0.1'
version = release .. "-0"
source = {
   url = "https://github.com/3scale/lua-benchmark-ips/archive/v" .. release .. ".tar.gz",
   md5 = "49622a0ed51c1696c003a93edbf32dc2",
   dir = "lua-benchmark-ips-" .. release,
}
description = {
    summary = "benchmark-ips - provides iteration per second benchmarking",
    detailed = "benchmark-ips - port of https://github.com/evanphx/benchmark-ips",
    homepage = "https://github.com/3scale/lua-benchmark-ips",
    license = "Apache License 2.0"
}
dependencies = {
}
build = {
    type = "builtin",
    modules = {
        ["benchmark.ips"] = "src/benchmark/ips.lua"
    }
}
