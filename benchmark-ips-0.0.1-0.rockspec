package = "benchmark-ips"
version = "0.0.1-0"
source = {
    url = "git+https://github.com/3scale/lua-benchmark-ips.git"
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
