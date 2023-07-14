rockspec_format = "3.0"

local tag = "1.0.2"
local project = "exasol-virtual-schema-common-lua"

package = project
version = tag .. "-1"

source = {
    url = "git://github.com/exasol/" .. project,
    tag = tag
}

description = {
    summary = "Common base library for the Exasol Virtual Schema (Lua) and Row-level Security (Lua)",
    detailed = [[This project contains the common parts between EVSL and RLSL that are Exasol-specific.

Common parts that are the same for all Virtual Schemas are in virtual-schema-common-lua, which serves as a base library for this one.]],
    homepage = "https://github.com/exasol/" .. project,
    license = "MIT",
    maintainer = 'Exasol <opensource@exasol.com>'
}

dependencies = {
    "virtual-schema-common-lua = 4.0.1",
}

build_dependencies = {
    "amalg"
}

test_dependencies = {
    "busted >= 2.0.0",
    "luacheck >= 0.25.0",
    "luacov >= 0.15.0",
    "luacov-coveralls >= 0.2.3",
    "ldoc >= 1.4.6-2"
}

test = {
    type = "busted"
}

build = {
    type = "builtin",
    modules = {
        ["exasol.evscl.ExasolBaseAdapterProperties"] = "src/exasol/evscl/ExasolBaseAdapterProperties.lua",
        ["exasol.evscl.AbstractMetadataReader"] = "src/exasol/evscl/AbstractMetadataReader.lua",
        ["exasol.evscl.AbstractQueryRewriter"] = "src/exasol/evscl/AbstractQueryRewriter.lua",
        ["exasol.evscl.LocalMetadataReader"] = "src/exasol/evscl/LocalMetadataReader.lua",
        ["exasol.evscl.LocalQueryRewriter"] = "src/exasol/evscl/LocalQueryRewriter.lua"
    }
}
