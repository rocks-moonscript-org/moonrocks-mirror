-- tree.lua, Lua representation of trees with edge lengths
-- Copyright (C) 2015 Boris Nagaev
-- See the LICENSE file for terms of use.

package = "tree"
version = "1.0.0-1"
source = {
    url = "git://github.com/starius/tree.lua.git",
    tag = '1.0.0'
}
description = {
    summary = "Lua representation of trees with edge lengths",
    homepage = "https://github.com/starius/tree.lua",
    license = "MIT",
}
dependencies = {
    "lua >= 5.1",
    "lpeg",
}
build = {
    type = "builtin",
    modules = {
        ['tree'] = 'src/tree/init.lua',
        ['tree.Graph'] = 'src/tree/Graph.lua',
        ['tree.Tree'] = 'src/tree/Tree.lua',
        ['tree.toNewick'] = 'src/tree/toNewick.lua',
        ['tree.fromNewick'] = 'src/tree/fromNewick.lua',
        ['tree.toDot'] = 'src/tree/toDot.lua',
        ['tree.detail.breadthFirst'] = 'src/tree/detail/breadthFirst.lua',
        ['tree.detail.depthFirst'] = 'src/tree/detail/depthFirst.lua',
        ['tree.detail.newNeighbours'] = 'src/tree/detail/newNeighbours.lua',
        ['tree.detail.compat'] = 'src/tree/detail/compat.lua',
        ['tree.detail.arrayFromIt'] = 'src/tree/detail/arrayFromIt.lua',
    },
    install = {
        bin = {
            newick2dot = 'src/bin/newick2dot.lua',
        },
    },
}
