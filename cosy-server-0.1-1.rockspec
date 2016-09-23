package = "cosy-server"
version = "0.1-1"
source  = {
  url = "git+https://github.com/cosyverif/server.git",
  tag = "0.1",
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
  "jwt",
  "lapis",
  "layeredata",
  "luaposix",
  "luasec",
  "luasocket",
  "lua-resty-http",
  "lua-resty-qless",
  -- "hashids",         -- FIXME: remove rockspec, fix wercker.yml and Dockerfile
}

build = {
  type    = "builtin",
  modules = {
    ["config"                          ] = "config.lua",
    ["migrations"                      ] = "migrations.lua",
    ["models"                          ] = "models.lua",
    ["cosy.server"                     ] = "src/cosy/server/init.lua",
    ["cosy.server.alias"               ] = "src/cosy/server/alias.lua",
    ["cosy.server.before"              ] = "src/cosy/server/before.lua",
    ["cosy.server.hashid"              ] = "src/cosy/server/hashid.lua",
    ["cosy.server.http"                ] = "src/cosy/server/http.lua",
    ["cosy.server.instance"            ] = "src/cosy/server/instance.lua",
    ["cosy.server.quote"               ] = "src/cosy/server/quote.lua",
    ["cosy.server.users"               ] = "src/cosy/server/users/init.lua",
    ["cosy.server.users.user"          ] = "src/cosy/server/users/user.lua",
    ["cosy.server.projects"            ] = "src/cosy/server/projects/init.lua",
    ["cosy.server.projects.alias"      ] = "src/cosy/server/projects/alias.lua",
    ["cosy.server.projects.aliases"    ] = "src/cosy/server/projects/aliases.lua",
    ["cosy.server.projects.editor"     ] = "src/cosy/server/projects/editor.lua",
    ["cosy.server.projects.execution"  ] = "src/cosy/server/projects/execution.lua",
    ["cosy.server.projects.executions" ] = "src/cosy/server/projects/executions.lua",
    ["cosy.server.projects.project"    ] = "src/cosy/server/projects/project.lua",
    ["cosy.server.projects.permission" ] = "src/cosy/server/projects/permission.lua",
    ["cosy.server.projects.permissions"] = "src/cosy/server/projects/permissions.lua",
    ["cosy.server.projects.resource"   ] = "src/cosy/server/projects/resource.lua",
    ["cosy.server.projects.resources"  ] = "src/cosy/server/projects/resources.lua",
    ["cosy.server.projects.stars"      ] = "src/cosy/server/projects/stars.lua",
    ["cosy.server.projects.tag"        ] = "src/cosy/server/projects/tag.lua",
    ["cosy.server.projects.tags"       ] = "src/cosy/server/projects/tags.lua",
    ["cosy.server.tags"                ] = "src/cosy/server/tags/init.lua",
    ["cosy.server.tags.tag"            ] = "src/cosy/server/tags/tag.lua",
    ["cosy.server.decorators"          ] = "src/cosy/server/decorators.lua",
    ["cosy.server.model"               ] = "src/cosy/server/model.lua",
    ["cosy.server.token"               ] = "src/cosy/server/token.lua",
    ["cosy.server.jobs.editor.start"   ] = "src/cosy/server/jobs/editor/start.lua",
    ["cosy.server.jobs.editor.stop"    ] = "src/cosy/server/jobs/editor/stop.lua",
    ["cosy.server.jobs.execution.start"] = "src/cosy/server/jobs/execution/start.lua",
    ["cosy.server.jobs.execution.stop" ] = "src/cosy/server/jobs/execution/stop.lua",
  },
  install = {
    bin = {
      ["cosy-server"] = "src/cosy/server/bin.lua",
    },
  },
}
