package = "SemParse"
version = "1.0.0-1"
source = {
    url = "git://github.com/hugeblank/semparse",
    tag = "v1.0.0"
}
description = {
    summary = "SemVer 2.0.0 parser",
    detailed = [[
        Parses valid semver 2.0.0 strings.
        Sets a metatable for easy comparison
    ]],
    homepage = "https://github.com/hugeblank/semparse",
    license = "MIT"
}
dependencies = {
    "lua >= 5.1, < 5.4"
}
build = {
    type = "builtin",
    modules = {
    	semver = "semver.lua"
    }
}
