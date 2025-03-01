package = "lumo-orm"
version = "1.0-0"
source = {
   url = "https://github.com/bhhaskin/lua-lumo-orm/archive/refs/tags/v1.0-0.tar.gz",
    md5 = "7986b4f1fb6794a9db7335a78652bb1f",
   dir = "lua-lumo-orm-1.0-0"
}
description = {
    summary = "A lightweight Active Record ORM for Lua with SQLite support",
    detailed = [[
        Lumo-ORM provides an Eloquent-style ORM for Lua, built to work with SQLite.
        It includes migrations, a query builder, relationships, and Active Record pattern support.
    ]],
    license = "MIT",
    homepage = "https://github.com/bhhaskin/lua-lumo-orm",
    maintainer = "Bryan Haskin <bhhaskin@bitsofsimplicity.com>"
}
dependencies = {
    "lua >= 5.1",
    "lsqlite3complete"
}
build = {
    type = "builtin",
    modules = {
        ["lumo"] = "src/lumo.lua",
        ["lumo.db"] = "src/lumo/db.lua",
        ["lumo.model"] = "src/lumo/model.lua",
        ["lumo.query_builder"] = "src/lumo/query_builder.lua",
        ["lumo.relationships"] = "src/lumo/relationships.lua",
        ["lumo.migrations"] = "src/lumo/migrations.lua",
        ["lumo.collection"] = "src/lumo/collection.lua",
    }
}
