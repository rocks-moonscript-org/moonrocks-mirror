-- LuaRocks rockspec for `panto-warming`: the session-warming extension for
-- Pantograph -- pure Lua, no compiled artifact of its own.
--
-- Module naming. Pantograph requires the first whitespace-delimited token of
-- an `[extensions] rocks = [...]` entry, so `require("panto-warming")` must
-- resolve to this rock's entry point; that is what the first `modules` line
-- maps. The remaining modules keep the same `warming.<name>` paths a local
-- checkout gets from `paths = ["/path/to/panto-warming"]`, so both load
-- paths resolve identical requires.
--
-- Dependencies. `toml2lua` (module name `toml`) reads the layered
-- `config.toml` at activation. It is pure Lua and needs nothing from the
-- system: the obvious alternative for full-spec TOML would bind a C library
-- and put a system package between a user and a working extension. `luv`
-- owns the warming timer and ships with panto as a pinned battery, so it is
-- normally already present in the tree this rock installs into.
--
-- Host compatibility. Pantograph is not a LuaRocks dependency: the host pins
-- this extension. This source uses callback-form agent:run_async(request,
-- callback); older no-callback hosts are unsupported.

rockspec_format = "3.0"
package = "panto-warming"
version = "0.2.0-1"

source = {
    url = "git+https://code.tjp.lol/public/panto-warming.git",
    tag = "v0.2.0",
}

description = {
    summary = "Session warming for Pantograph: keep the provider prompt cache warm while you pause.",
    detailed = [[
        Periodically sends a minimal transient prompt on top of the session's
        current context so provider-side prompt caches stay warm between turns,
        then discards the prompt and the response -- nothing enters the context
        window or the session transcript. It requires a Pantograph host exposing
        callback-form agent:run_async(request, callback); older no-callback hosts
        are unsupported. Configured through a [warming] section in config.toml,
        mirroring opencode's warming feature.
    ]],
    homepage = "https://code.tjp.lol/public/panto-warming",
    license = "MIT",
    labels = { "ai", "llm", "agent", "panto", "pantograph", "extension" },
}

dependencies = {
    "lua >= 5.4, < 5.5",
    "toml2lua >= 3.0, < 4.0",
    "luv >= 1.48",
}

build = {
    type = "builtin",
    modules = {
        ["panto-warming"] = "init.lua",
        ["warming.config"] = "warming/config.lua",
        ["warming.policy"] = "warming/policy.lua",
        ["warming.warm"] = "warming/warm.lua",
    },
}
