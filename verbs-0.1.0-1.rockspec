rockspec_format = "3.0"
package = "verbs"
version = "0.1.0-1"
source = {
    url = "https://github.com/antimemeai/verbs/archive/refs/tags/lua-v0.1.0.tar.gz",
    dir = "verbs-lua-v0.1.0",
    md5 = "7f9e3393d50ba86e39d94195a26e4c9b",
}
description = {
    summary = "Explicit, named constraints for more verifiable agent-written code",
    detailed = [[Evaluate a synchronous predicate once, returning the original
        value or raising a named violation. Predicate errors propagate.]],
    homepage = "https://github.com/antimemeai/verbs",
    issues_url = "https://github.com/antimemeai/verbs/issues",
    license = "MIT",
}
dependencies = { "lua >= 5.1, < 5.6" }
build = {
    type = "builtin",
    modules = { verbs = "packages/lua/verbs.lua" },
}
