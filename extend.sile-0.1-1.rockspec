rockspec_format = "3.0"
package = "extend.sile"
version = "0.1-1"
source = {
    url = "git+https://github.com/jodros/extend.sile.git",
    tag = "v0.1.0-alpha"
}
description = {
    homepage = "https://github.com/jodros/extend.sile",
    license = "MIT"
}
dependencies = {"lua >= 5.1", "datafile", "lua-toml", "luafilesystem"}
build = {
    type = "builtin",
    modules = {
        --    ["sile.classes.base"]                = "classes/base.lua",
        ["sile.classes.plain"] = "classes/plain.lua",

        ["sile.core.gatherer"] = "core/gatherer.lua",
        ["sile.core.sile"] = "core/sile.lua",
        ["sile.core.font"] = "core/font.lua",
        ["sile.core.papersize"] = "core/papersize.lua",

        ["sile.packages.styles.init"] = "packages/styles/init.lua",
        ["sile.packages.textual.init"] = "packages/textual/init.lua",
        ["sile.packages.extra-textual.init"] = "packages/extra-textual/init.lua",

        ["sile.packages.extend.folio.init"] = "packages/extend/folio/init.lua",
        --     ["sile.packages.extend.footnotes.init"]       = "packages/extend/footnotes/init.lua",
        --     ["sile.packages.extend.tableofcontents.init"] = "packages/extend/tableofcontents/init.lua",

        ["sile.typesetters.base"]              = "typesetters/base.lua",
    },
    copy_directories = {"config"}
}
