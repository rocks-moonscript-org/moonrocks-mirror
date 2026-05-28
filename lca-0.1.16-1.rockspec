package = "lca"
version = "0.1.16-1"
source = {
   url = "https://github.com/forkfork/lca/archive/refs/tags/v0.1.16.tar.gz",
   dir = "lca-0.1.16"
}
description = {
   summary = "A Lua coding agent using OpenAI Codex OAuth credentials",
   detailed = [[
	lca is a from-scratch Lua coding agent with
OpenAI Codex OAuth login, AWS Bedrock support, an interactive REPL, local tools,
streaming responses, context compaction, and MCP server support.

The tag-based read/edit tool design is inspired by Salvatore Sanfilippo
(@antirez), especially https://antirez.com/news/166.
]],
   homepage = "https://github.com/forkfork/lca",
   license = "BSD-2-Clause"
}
dependencies = {
   "lua >= 5.4, < 5.6",
   "luasocket",
   "luasec",
   "lua-cjson",
   "luv",
   "linenoise-luv"
}
build = {
   type = "builtin",
   modules = {
      ["agent.async"] = "lua/agent/async.lua",
      ["agent.commands"] = "lua/agent/commands.lua",
      ["agent.compaction"] = "lua/agent/compaction.lua",
      ["agent.config"] = "lua/agent/config.lua",
      ["agent.core"] = "lua/agent/core.lua",
      ["agent.job_supervisor"] = "lua/agent/job_supervisor.lua",
      ["agent.jobs"] = "lua/agent/jobs.lua",
      ["agent.lint"] = "lua/agent/lint.lua",
      ["agent.login"] = "lua/agent/login.lua",
      ["agent.mcp"] = "lua/agent/mcp.lua",
      ["agent.net.http_transport"] = "lua/agent/net/http_transport.lua",
      ["agent.parallel"] = "lua/agent/parallel.lua",
      ["agent.project_context"] = "lua/agent/project_context.lua",
      ["agent.project_index"] = "lua/agent/project_index.lua",
      ["agent.providers"] = "lua/agent/providers/init.lua",
      ["agent.providers.bedrock"] = "lua/agent/providers/bedrock.lua",
      ["agent.providers.codex"] = "lua/agent/providers/codex.lua",
      ["agent.repl"] = "lua/agent/repl.lua",
      ["agent.session"] = "lua/agent/session.lua",
      ["agent.system_prompt"] = "lua/agent/system_prompt.lua",
      ["agent.tool_protocol"] = "lua/agent/tool_protocol.lua",
      ["agent.tool_registry"] = "lua/agent/tool_registry.lua",
      ["agent.tools.edit"] = "lua/agent/tools/edit.lua",
      ["agent.tools.find"] = "lua/agent/tools/find.lua",
      ["agent.tools.grep"] = "lua/agent/tools/grep.lua",
      ["agent.tools.job_output"] = "lua/agent/tools/job_output.lua",
      ["agent.tools.job_start"] = "lua/agent/tools/job_start.lua",
      ["agent.tools.job_status"] = "lua/agent/tools/job_status.lua",
      ["agent.tools.job_stop"] = "lua/agent/tools/job_stop.lua",
      ["agent.tools.job_wait"] = "lua/agent/tools/job_wait.lua",
      ["agent.tools.ls"] = "lua/agent/tools/ls.lua",
      ["agent.tools.read"] = "lua/agent/tools/read.lua",
      ["agent.tools.run"] = "lua/agent/tools/run.lua",
      ["agent.tools.shell"] = "lua/agent/tools/shell.lua",
      ["agent.tools.write"] = "lua/agent/tools/write.lua",
      ["agent.ui"] = "lua/agent/ui.lua",
      ["agent.util.fs"] = "lua/agent/util/fs.lua",
      ["agent.util.json"] = "lua/agent/util/json.lua",
      ["agent.util.path"] = "lua/agent/util/path.lua",
      ["agent.util.shell"] = "lua/agent/util/shell.lua",
      logo = "lua/logo.lua"
   },
   install = {
      bin = {
         lca = "bin/lca",
         ["lca-agent"] = "bin/agent.lua",
         ["lca-auth"] = "scripts/auth.lua",
         ["lca-login"] = "scripts/login.lua",
         ["lca-repl"] = "bin/repl.lua"
      }
   }
}
