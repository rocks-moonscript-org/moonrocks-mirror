package = "cosy-server"
version = "0.1-2"
source  = {
  url    = "git+https://github.com/cosyverif/server.git",
  branch = "0.1",
}

description = {
  summary    = "CosyVerif: server",
  detailed   = [[
    Server of the CosyVerif platform.
  ]],
  homepage   = "http://www.cosyverif.org/",
  license    = "MIT/X11",
  maintainer = "Alban Linard <alban@linard.fr>",
}

dependencies = {
  "lua >= 5.1",
  "hashids",         -- FIXME: remove rockspec, fix wercker.yml and Dockerfile
  "jwt",
  "lapis",
  "layeredata",
  "luaposix",
  "luasec",
  "luasocket",
  "lua-resty-http",
  "lua-resty-qless",
}

local sources = {
  "src/cosy/server/alias.lua",
  "src/cosy/server/before.lua",
  "src/cosy/server/bin.lua",
  "src/cosy/server/decorators.lua",
  "src/cosy/server/hashid.lua",
  "src/cosy/server/http.lua",
  "src/cosy/server/init.lua",
  "src/cosy/server/instance.lua",
  "src/cosy/server/jobs/clean.lua",
  "src/cosy/server/jobs/editor.lua",
  "src/cosy/server/jobs/execution.lua",
  "src/cosy/server/jobs/stop.lua",
  "src/cosy/server/lock.lua",
  "src/cosy/server/model.lua",
  "src/cosy/server/projects/init.lua",
  "src/cosy/server/projects/permissions/permission.lua",
  "src/cosy/server/projects/permissions/init.lua",
  "src/cosy/server/projects/project.lua",
  "src/cosy/server/projects/resources/aliases/alias.lua",
  "src/cosy/server/projects/resources/aliases/init.lua",
  "src/cosy/server/projects/resources/editor.lua",
  "src/cosy/server/projects/resources/executions/execution.lua",
  "src/cosy/server/projects/resources/executions/init.lua",
  "src/cosy/server/projects/resources/init.lua",
  "src/cosy/server/projects/resources/resource.lua",
  "src/cosy/server/projects/stars/init.lua",
  "src/cosy/server/projects/tags/init.lua",
  "src/cosy/server/projects/tags/tag.lua",
  "src/cosy/server/quote.lua",
  "src/cosy/server/tags/init.lua",
  "src/cosy/server/tags/tag.lua",
  "src/cosy/server/test.lua",
  "src/cosy/server/token.lua",
  "src/cosy/server/users/init.lua",
  "src/cosy/server/users/user.lua",
}
local modules = {
  ["config"    ] = "config.lua",
  ["migrations"] = "migrations.lua",
  ["models"    ] = "models.lua",
}
for i = 1, #sources do
  local source = sources [i]
  local module = source:gsub ("%.lua$", ""):gsub ("^src/", ""):gsub ("/", ".")
  if module:match "%.init$" then
    module = module:sub (1, #module-5)
  end
  modules [module] = source
end

build = {
  type    = "builtin",
  modules = modules,
  install = {
    bin = {
      ["cosy-server"] = "src/cosy/server/bin.lua",
    },
  },
}
