package = "alnbox"
version = "1.1.0-1"
source = {
    url = "git://github.com/npge/alnbox.git",
    tag = "1.1.0",
}
description = {
    summary = "Alignment viewer based on the curses library",
    homepage = "https://github.com/npge/alnbox",
    license = "MIT",
}
dependencies = {
    "lua >= 5.1",
    "lcurses",
}
build = {
    type = "builtin",
    modules = {
        ['alnbox'] = 'src/alnbox/init.lua',
        ['alnbox.runAlnbox'] = 'src/alnbox/runAlnbox.lua',
        ['alnbox.alnwindow'] = 'src/alnbox/alnwindow.lua',
        ['alnbox.navigate'] = 'src/alnbox/navigate.lua',
        ['alnbox.makePair'] = 'src/alnbox/makePair.lua',
        ['alnbox.initializeColors'] = 'src/alnbox/initializeColors.lua',
        ['alnbox.initializeCurses'] = 'src/alnbox/initializeCurses.lua',
        ['alnbox.putCell'] = 'src/alnbox/putCell.lua',
        ['alnbox.cleanChar'] = 'src/alnbox/cleanChar.lua',
        ['alnbox.readFasta'] = 'src/alnbox/readFasta.lua',
        ['alnbox.alignmentParameters'] = 'src/alnbox/alignmentParameters.lua',
        ['alnbox.columnDigit'] = 'src/alnbox/columnDigit.lua',
        ['alnbox.dnaCells'] = 'src/alnbox/dnaCells.lua',
        ['alnbox.consensusChar'] = 'src/alnbox/consensusChar.lua',
        ['alnbox.makeAlignment'] = 'src/alnbox/makeAlignment.lua',
    },
    install = {
        bin = {
            "src/bin/show-fasta"
        }
    }
}
