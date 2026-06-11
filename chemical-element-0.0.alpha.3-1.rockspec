rockspec_format = "3.1"
package = "chemical-element"
version = "0.0.alpha.3-1"
source = {
    url = "git+https://gitlab.com/luachem/chemical-element.git",
    tag = "0.0.alpha.3-1"
}
description = {
    summary = "Chemical element of the periodic table of elements.",
    detailed = [[
        The lua chemical-element module provides classes and objects to
        programmatically represent a chemical element from the periodic table of
        elements. This module exports concrete instantiated objects for all
        periodic elements so having to create one should rarely be necessary.

        The Elements object is most likely going to be one of the main and most
        used objects exported by this module. It's capable of using an element's
        atomic number, symbol, or name to return an Element object.

        This package also provides an ElementSet class which is a specialized
        collection for Element objects.

        This module employs an immutable by default architecture so all objects
        it exports and created from its classes are immutable (or intended to be
        as immutable as possible).
    ]],
    homepage = "https://gitlab.com/luachem/chemical-element",
    issues_url = "https://gitlab.com/luachem/chemical-element/-/issues",
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
    "argparse ~> 0.7"
}
