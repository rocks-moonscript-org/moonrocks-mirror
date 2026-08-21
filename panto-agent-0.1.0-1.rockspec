rockspec_format = "3.0"
package = "panto-agent"
version = "0.1.0-1"

source = {
   url = "git+https://code.tjp.lol/panto-agent.git",
   tag = "v0.1.0",
}

description = {
   summary = "The agent.* extension suite for pantograph",
   detailed = [[
Coding-agent extensions for the panto CLI: rules-file context injection
(agent.rules), on-demand skills (agent.skills, exposing the agent.skill tool), and layered slash commands
(agent.commands). Load by adding "panto-agent" to `extensions.rocks` in
panto's config.toml.
]],
   homepage = "https://code.tjp.lol/panto-agent",
   license = "MIT",
   labels = { "ai", "llm", "agent", "panto", "pantograph", "extension" },
}

-- `api7-lua-tinyyaml` (module name `tinyyaml`) parses the YAML frontmatter on
-- SKILL.md files and Markdown commands. It is pure Lua, so this rock still
-- installs anywhere; the full-spec alternative, `lyaml`, binds the system
-- libyaml and would fail to build wherever that library is absent. What the
-- subset costs is anchors/aliases (frontmatter.lua warns instead of reading
-- the raw `*alias` token) and plain multi-line scalars (a parse warning).
dependencies = {
   "lua >= 5.1",
   "api7-lua-tinyyaml >= 0.4.4, < 0.5",
}

build = {
   type = "builtin",
   modules = {
      ["panto-agent"] = "panto-agent/init.lua",
      ["panto-agent.commands"] = "panto-agent/commands.lua",
      ["panto-agent.frontmatter"] = "panto-agent/frontmatter.lua",
      ["panto-agent.rules"] = "panto-agent/rules.lua",
      ["panto-agent.skills"] = "panto-agent/skills.lua",
   },
}
