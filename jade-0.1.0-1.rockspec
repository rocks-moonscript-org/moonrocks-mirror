package = "jade"
version = "0.1.0-1"
source = {
    url = "git://github.com/AlehandroSV/Jade.git",
    tag = "v0.1.0",
    dir = "jade"
}
description = {
    summary = "Um ORM moderno para Lua",
    detailed = [[
        Jade é um ORM/Data Mapper moderno para Lua.
        Features: schema declarativo, migrations automáticas,
        query builder, relações, paginação, transactions e soft delete.
    ]],
    homepage = "https://github.com/AlehandroSV/Jade",
    license = "MIT"
}
dependencies = {
    "lua >= 5.1, < 5.5"
}
-- Optional: descomente para PostgreSQL
-- "luapgsql >= 1.0.0"
build = {
    type = "builtin",
    modules = {
        -- Core
        jade = "src/jade/init.lua",
        ["jade._VERSION"] = "src/jade/_VERSION.lua",
        ["jade.config"] = "src/jade/config.lua",

        -- Schema
        ["jade.schema"] = "src/jade/schema/init.lua",
        ["jade.schema.column"] = "src/jade/schema/column.lua",
        ["jade.schema.table"] = "src/jade/schema/table.lua",

        -- Types
        ["jade.types"] = "src/jade/types/init.lua",
        ["jade.types.string"] = "src/jade/types/string.lua",
        ["jade.types.integer"] = "src/jade/types/integer.lua",
        ["jade.types.boolean"] = "src/jade/types/boolean.lua",
        ["jade.types.text"] = "src/jade/types/text.lua",
        ["jade.types.timestamp"] = "src/jade/types/timestamp.lua",
        ["jade.types.float"] = "src/jade/types/float.lua",
        ["jade.types.decimal"] = "src/jade/types/decimal.lua",
        ["jade.types.uuid"] = "src/jade/types/uuid.lua",
        ["jade.types.date"] = "src/jade/types/date.lua",

        -- Entity
        ["jade.entity"] = "src/jade/entity/init.lua",
        ["jade.entity.instance"] = "src/jade/entity/instance.lua",
        ["jade.entity.relations"] = "src/jade/entity/relations.lua",
        ["jade.entity.proxy"] = "src/jade/entity/proxy.lua",
        ["jade.entity.soft_delete"] = "src/jade/entity/soft_delete.lua",

        -- Query
        ["jade.query"] = "src/jade/query/init.lua",
        ["jade.query.condition"] = "src/jade/query/condition.lua",
        ["jade.query.expression"] = "src/jade/query/expression.lua",
        ["jade.query.paginate"] = "src/jade/query/paginate.lua",

        -- Driver
        ["jade.driver"] = "src/jade/driver/init.lua",
        ["jade.driver.base"] = "src/jade/driver/base.lua",
        ["jade.driver.postgresql"] = "src/jade/driver/postgresql.lua",

        -- Migration
        ["jade.migration"] = "src/jade/migration/init.lua",
        ["jade.migration.tracker"] = "src/jade/migration/tracker.lua",
        ["jade.migration.runner"] = "src/jade/migration/runner.lua",
        ["jade.migration.file"] = "src/jade/migration/file.lua",
        ["jade.migration.diff"] = "src/jade/migration/diff.lua",
        ["jade.migration.generator"] = "src/jade/migration/generator.lua",

        -- Transaction
        ["jade.transaction"] = "src/jade/transaction/init.lua",
        ["jade.transaction.manager"] = "src/jade/transaction/manager.lua",

        -- Util
        ["jade.util.inflection"] = "src/jade/util/inflection.lua",
        ["jade.util.log"] = "src/jade/util/log.lua",
        ["jade.util.compat"] = "src/jade/util/compat.lua",

        -- i18n
        ["jade.i18n"] = "src/jade/i18n/init.lua",
        ["jade.i18n.en"] = "src/jade/i18n/en.lua",
        ["jade.i18n.pt-br"] = "src/jade/i18n/pt-br.lua",
    }
}
