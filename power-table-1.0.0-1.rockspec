package = "power-table"
version = "1.0.0-1"

source = {url = "git://github.com/gsdenys/lua-power-table", tag = "1.0.0-1"}

description = {
    summary = "A lua library to improve table functionality",
    detailed = [[
		This library extends the common Lua table by adding usefull function.
	]],
    homepage = "https://gsdenys.github.io/lua-power-table",
    license = "MIT"
}

dependencies = {"lua"}

build = {
    type = "builtin",
    modules = {
        ['ptable'] = "src/table.lua",

        ['ptable.utils.helper'] = "src/utils/helper.lua",
        ['ptable.utils.level'] = "src/utils/level.lua",
        ['ptable.utils.messages'] = "src/utils/messages.lua",
        ['ptable.utils.types'] = "src/utils/types.lua",

        ['ptable.assertion'] = "src/assertion.lua",
        ['ptable.warning'] = "src/warning.lua",

        ['ptable.operations.basic'] = "src/operations/basic.lua",
        ['ptable.operations.kv'] = "src/operations/key_value.lua",
        ['ptable.operations.iterator'] = "src/operations/iterator.lua",
        ['ptable.operations.nothing'] = "src/operations/no_actions.lua",
        ['ptable.operations.each'] = "src/operations/each.lua"
    }
}
