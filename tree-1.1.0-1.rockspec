-- tree.lua, Lua representation of trees with edge lengths
-- Copyright (C) 2015 Boris Nagaev
-- See the LICENSE file for terms of use.

package = "tree"
version = "1.1.0-1"
source = {
    url = "git://github.com/starius/tree.lua.git",
    tag = "1.1.0",
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
        ['treelua'] = 'src/treelua/init.lua',
        ['treelua.Graph'] = 'src/treelua/Graph.lua',
        ['treelua.Tree'] = 'src/treelua/Tree.lua',
        ['treelua.toNewick'] = 'src/treelua/toNewick.lua',
        ['treelua.fromNewick'] = 'src/treelua/fromNewick.lua',
        ['treelua.toDot'] = 'src/treelua/toDot.lua',
        ['treelua.detail.breadthFirst'] = 'src/treelua/detail/breadthFirst.lua',
        ['treelua.detail.depthFirst'] = 'src/treelua/detail/depthFirst.lua',
        ['treelua.detail.newNeighbours'] = 'src/treelua/detail/newNeighbours.lua',
        ['treelua.detail.compat'] = 'src/treelua/detail/compat.lua',
        ['treelua.detail.arrayFromIt'] = 'src/treelua/detail/arrayFromIt.lua',
    },
    install = {
        bin = {
            newick2dot = 'src/bin/newick2dot.lua',
        },
    },
}
