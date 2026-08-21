-- LuaRocks rockspec for `panto-subagents`: the `subagents` extension for
-- Pantograph — pure Lua, no compiled artifact of its own.
--
-- Module naming. Pantograph requires the first whitespace-delimited token of an
-- `[extensions] rocks = [...]` entry, so `require("panto-subagents")` must
-- resolve to this rock's entry point; that is what the first `modules` line
-- maps. The remaining modules keep the same `subagents.<name>` paths a local
-- checkout gets from `paths = ["/path/to/panto-subagents"]`, so both load paths
-- resolve identical requires.
--
-- Dependencies. `api7-lua-tinyyaml` (module name `tinyyaml`) parses profile
-- frontmatter. It is pure Lua, so it installs anywhere without a system
-- library: the obvious alternative, `lyaml`, is a C binding over libyaml that
-- luarocks does not vendor, which would put `brew install libyaml` (or
-- `apt install libyaml-dev`, plus sometimes `YAML_DIR=...`) between a user and
-- a working extension. The cost is that tinyyaml parses a subset: it matches
-- lyaml on every quoting, escaping and block-scalar form profiles use, but it
-- does not resolve anchors/aliases (subagents/frontmatter.lua detects and
-- warns rather than accepting the raw `*alias` token) and it raises on plain
-- multi-line scalars, which surfaces as a parse warning. The api7 fork is
-- preferred over peposso's original: it fixes `'it''s here'` truncating to
-- `it`, and it ships a .src.rock instead of resolving a `git://` URL.
-- `toml2lua` (module name `toml`) reads the
-- layered `config.toml` at activation and the TOML workflows afterwards, so it
-- is required, not optional; it is pure Lua and needs nothing from the system. `luv` backs the recursive discovery walk and the
-- wake pipes child jobs are polled on, and ships with panto as a pinned
-- battery, so it is normally already present in the tree this rock installs
-- into.
--
-- Deliberately absent: `jsonschema`. It depends on `lrexlib-pcre`, which needs
-- a system PCRE that stock macOS does not have, and a failed dependency install
-- would take the whole extension down silently (panto logs and skips a rock
-- that fails to load). subagents/workflow.lua therefore validates structured
-- workflow output with its own built-in JSON Schema subset and never probes for
-- the rock: one validator, so the same child output cannot pass on one machine
-- and fail on another.

rockspec_format = "3.0"
package = "panto-subagents"
version = "0.1.0-1"

source = {
    url = "git+https://code.tjp.lol/public/panto-subagents.git",
    tag = "v0.1.0",
}

description = {
    summary = "Delegation and workflows for Pantograph: the `subagents` extension.",
    detailed = [[
        Lets a primary panto agent start specialized child agents from Markdown
        profiles, run several at once, and continue their conversations later.
        Provides the subagents.run / subagents.models / subagents.lua /
        subagents.workflow tools, a callback-based Lua workflow API with
        one-shot structured workers, and TOML dependency graphs exposed as
        /workflow:<name> commands.
    ]],
    homepage = "https://code.tjp.lol/public/panto-subagents",
    license = "MIT",
    labels = { "ai", "llm", "agent", "panto", "pantograph", "extension" },
}

dependencies = {
    "lua >= 5.4, < 5.5",
    "api7-lua-tinyyaml >= 0.4.4, < 0.5",
    "toml2lua >= 3.0, < 4.0",
    "luv >= 1.48",
}

-- The specs run on plain Lua and decode structured child output with dkjson
-- when the host's own JSON codec (`panto.ext.json`) is absent.
test_dependencies = {
    "dkjson >= 2.11",
}

test = {
    type = "command",
    command = "lua spec/run.lua",
}

build = {
    type = "builtin",
    modules = {
        ["panto-subagents"] = "init.lua",
        ["subagents.frontmatter"] = "subagents/frontmatter.lua",
        ["subagents.jobs"] = "subagents/jobs.lua",
        ["subagents.luatool"] = "subagents/luatool.lua",
        ["subagents.models"] = "subagents/models.lua",
        ["subagents.paths"] = "subagents/paths.lua",
        ["subagents.profiles"] = "subagents/profiles.lua",
        ["subagents.progress"] = "subagents/progress.lua",
        ["subagents.run"] = "subagents/run.lua",
        ["subagents.spawn"] = "subagents/spawn.lua",
        ["subagents.toml_workflows"] = "subagents/toml_workflows.lua",
        ["subagents.workflow"] = "subagents/workflow.lua",
    },
}
