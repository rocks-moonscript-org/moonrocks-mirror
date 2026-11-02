rockspec_format = "3.0"
package = "bibleit"
version = "0.0.2-1"
source = {
   url = "git+https://github.com/bibleit-labs/bibleit-lua.git",
   tag = "v0.0.2",
}
description = {
   summary = "Bring Bibleit’s Bible reading and live Scripture sharing into your Lua applications.",
   detailed = [[
      Build tools that help people read, study, and share Scripture with Bibleit.
      Access Bible translations and verses, manage live sessions, and create
      presentations from Lua. Connect your applications to the Bibleit platform
      with support for authentication, live events, and SSH commands.
      Learn more at https://bibleit.app.
   ]],
   homepage = "https://github.com/bibleit-labs/bibleit-lua",
   license = "MIT",
}
dependencies = {
   "lua >= 5.1, < 5.6",
   "dkjson >= 2.11, < 3",
   "luasocket >= 3.1, < 4",
   "luasec >= 1.3.2, < 2",
}
test_dependencies = { "luaunit >= 3.5, < 4" }
test = { type = "command", script = "tests/sdk_test.lua" }
build = {
   type = "builtin",
   modules = {
      ["bibleit.command"] = "src/bibleit/command.lua",
      ["bibleit.context"] = "src/bibleit/context.lua",
      ["bibleit.errors"] = "src/bibleit/errors.lua",
      ["bibleit.http"] = "src/bibleit/http.lua",
      ["bibleit"] = "src/bibleit/init.lua",
      ["bibleit.internal.auth"] = "src/bibleit/internal/auth.lua",
      ["bibleit.internal.client"] = "src/bibleit/internal/client.lua",
      ["bibleit.internal.oauth"] = "src/bibleit/internal/oauth.lua",
      ["bibleit.internal.operations_generated"] = "src/bibleit/internal/operations_generated.lua",
      ["bibleit.internal.schemas_generated"] = "src/bibleit/internal/schemas_generated.lua",
      ["bibleit.internal.utf8"] = "src/bibleit/internal/utf8.lua",
      ["bibleit.internal.ssh"] = "src/bibleit/internal/ssh.lua",
      ["bibleit.models"] = "src/bibleit/models.lua",
      ["bibleit.protocol"] = "src/bibleit/protocol.lua",
      ["bibleit.transport"] = "src/bibleit/transport.lua",
      ["bibleit.util"] = "src/bibleit/util.lua",
   },
   copy_directories = { "docs" },
}
