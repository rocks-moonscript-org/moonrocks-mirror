rockspec_format = "3.1"
package = "molecule"
version = "0.0.alpha.1-1"
source = {
    url = "git+https://gitlab.com/luachem/molecule.git",
    tag = "0.0.alpha.1-1"
}
description = {
    summary = "A group of 2 or more chemical elements.",
    detailed = [[
        The lua chemical-element module provides classes and objects to
        programmatically represent a group of 2 or more chemical elements.

        At the moment this package is very early in development and lacks many
        features and/or contains bugs and shouldn't be used until it's more
        developed out.
    ]],
    homepage = "https://gitlab.com/luachem/molecule",
    issues_url = "https://gitlab.com/luachem/molecule/-/issues",
    maintainer = "Snapper Gee <XxSnapperGeexX@gmail.com>",
    license = "MIT",
    labels = {"chemistry", "periodic-table", "periodic-table-of-elements", "chemical-element", "molecule", "stoichiometry"},
}
test_dependencies = {
    "busted ~> 2.3",
    "luacov ~> 0.17"
}
dependencies = {
    "lua ~> 5.1",
    "chemical-element"
}
