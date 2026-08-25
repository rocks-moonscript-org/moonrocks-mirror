package = "jade"
version = "1.4.0-1"
source = {
    url = "git://github.com/AlehandroSV/Jade.git",
    tag = "v1.4.0",
    dir = "Jade",
    dir = "Jade"
}
description = {
    summary = "Um ORM moderno para Lua",
    detailed = [[
        Jade e um ORM/Data Mapper moderno para Lua.
        Features: schema declarativo, migrations automaticas,
        query builder, relacoes, paginacao, transactions e soft delete.
    ]],
    homepage = "https://github.com/AlehandroSV/jade",
    license = "MIT"
}
dependencies = {
    "lua >= 5.1, < 5.6"
}

-- Optional dependencies for database drivers
-- Uncomment the ones you need:
-- "luasql-postgres",    -- PostgreSQL driver
-- "luasql-mysql",       -- MySQL driver
-- "luasql-sqlite3",     -- SQLite driver
build = {
    type = "builtin",
    modules = {
        jade = "src/jade/init.lua",
        ["jade._VERSION"] = "src/jade/_VERSION.lua",
        ["jade.config"] = "src/jade/config.lua",
        ["jade.schema"] = "src/jade/schema/init.lua",
        ["jade.schema.column"] = "src/jade/schema/column.lua",
        ["jade.schema.table"] = "src/jade/schema/table.lua",
        ["jade.schema.declarative"] = "src/jade/schema/declarative.lua",
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
        ["jade.types.luals"] = "src/jade/types/luals.lua",
        ["jade.types.cuid"] = "src/jade/types/cuid.lua",
        ["jade.types.nanoid"] = "src/jade/types/nanoid.lua",
        ["jade.types.bigint"] = "src/jade/types/bigint.lua",
        ["jade.types.json"] = "src/jade/types/json.lua",
        ["jade.types.enum"] = "src/jade/types/enum.lua",
        ["jade.entity"] = "src/jade/entity/init.lua",
        ["jade.entity.instance"] = "src/jade/entity/instance.lua",
        ["jade.entity.relations"] = "src/jade/entity/relations.lua",
        ["jade.entity.proxy"] = "src/jade/entity/proxy.lua",
        ["jade.entity.soft_delete"] = "src/jade/entity/soft_delete.lua",
        ["jade.entity.validations"] = "src/jade/entity/validations.lua",
        ["jade.entity.events"] = "src/jade/entity/events.lua",
        ["jade.entity.callbacks"] = "src/jade/entity/callbacks.lua",
        ["jade.query"] = "src/jade/query/init.lua",
        ["jade.query.condition"] = "src/jade/query/condition.lua",
        ["jade.query.expression"] = "src/jade/query/expression.lua",
        ["jade.query.paginate"] = "src/jade/query/paginate.lua",
        ["jade.driver"] = "src/jade/driver/init.lua",
        ["jade.driver.base"] = "src/jade/driver/base.lua",
        ["jade.driver.postgresql"] = "src/jade/driver/postgresql.lua",
        ["jade.driver.mysql"] = "src/jade/driver/mysql.lua",
        ["jade.driver.sqlite"] = "src/jade/driver/sqlite.lua",
        ["jade.driver.mariadb"] = "src/jade/driver/mariadb.lua",
        ["jade.driver.pool"] = "src/jade/driver/pool.lua",
        ["jade.migration"] = "src/jade/migration/init.lua",
        ["jade.migration.tracker"] = "src/jade/migration/tracker.lua",
        ["jade.migration.runner"] = "src/jade/migration/runner.lua",
        ["jade.migration.file"] = "src/jade/migration/file.lua",
        ["jade.migration.diff"] = "src/jade/migration/diff.lua",
        ["jade.migration.generator"] = "src/jade/migration/generator.lua",
        ["jade.transaction"] = "src/jade/transaction/init.lua",
        ["jade.transaction.manager"] = "src/jade/transaction/manager.lua",
        ["jade.util.inflection"] = "src/jade/util/inflection.lua",
        ["jade.util.log"] = "src/jade/util/log.lua",
        ["jade.util.compat"] = "src/jade/util/compat.lua",
        ["jade.util.quoting"] = "src/jade/util/quoting.lua",
        ["jade.util.retry"] = "src/jade/util/retry.lua",
        ["jade.i18n"] = "src/jade/i18n/init.lua",
        ["jade.i18n.en"] = "src/jade/i18n/en.lua",
        ["jade.i18n.pt-br"] = "src/jade/i18n/pt-br.lua",
        ["jade.security"] = "src/jade/security/init.lua",
        ["jade.security.sanitizer"] = "src/jade/security/sanitizer.lua",
        ["jade.security.validator"] = "src/jade/security/validator.lua",
        ["jade.introspection"] = "src/jade/introspection/init.lua",
        ["jade.introspection.reader"] = "src/jade/introspection/reader.lua",
        ["jade.introspection.converter"] = "src/jade/introspection/converter.lua",
        ["jade.errors"] = "src/jade/errors/init.lua",
        ["jade.errors.base"] = "src/jade/errors/base.lua",
        ["jade.errors.connection"] = "src/jade/errors/connection.lua",
        ["jade.errors.query"] = "src/jade/errors/query.lua",
        ["jade.errors.timeout"] = "src/jade/errors/timeout.lua",
        ["jade.errors.migration"] = "src/jade/errors/migration.lua",
        ["jade.errors.introspection"] = "src/jade/errors/introspection.lua",
        ["jade.errors.integrity"] = "src/jade/errors/integrity.lua",
        ["jade.errors.security"] = "src/jade/errors/security.lua",
        ["jade.encryption"] = "src/jade/encryption/init.lua",
        ["jade.database"] = "src/jade/database/init.lua",
        ["jade.cache"] = "src/jade/cache/init.lua",
        ["jade.audit"] = "src/jade/audit/init.lua",
        ["jade.seed"] = "src/jade/seed/init.lua",
        ["jade.test.helpers"] = "src/jade/test/helpers.lua",
        -- Plugin system (issue #93)
        ["jade.plugin"] = "src/jade/plugin/init.lua",
        ["jade.plugin.loader"] = "src/jade/plugin/loader.lua",
        ["jade.plugin.base"] = "src/jade/plugin/base.lua",
        ["jade.plugin.hooks"] = "src/jade/plugin/hooks.lua",
        ["jade.plugin.soft_delete"] = "src/jade/plugin/soft_delete.lua",
        ["jade.plugin.callbacks"] = "src/jade/plugin/callbacks.lua",
        ["jade.plugin.optimistic_lock"] = "src/jade/plugin/optimistic_lock.lua",
        ["jade.plugin.audit"] = "src/jade/plugin/audit.lua",
        ["jade.plugin.encryption"] = "src/jade/plugin/encryption.lua",
        ["jade.plugin.cache"] = "src/jade/plugin/cache.lua",
    }
}
