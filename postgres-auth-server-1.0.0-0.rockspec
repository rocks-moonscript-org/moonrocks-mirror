package = "postgres-auth-server"
version = "1.0.0-0"

source = {
  url = "https://github.com/jprjr/postgres-auth-server/archive/1.0.0.tar.gz",
  file = "postgres-auth-server-1.0.0.tar.gz",
}

dependencies = {
  "lua >= 5.1",
  "lecho",
  "lapis",
  "lyaml",
  "luaposix",
  "luacrypto",
  "lua-crypt",
}

build = {
  type = "none",
  install = {
    bin = {
      ["postgres-auth-server"] = "bin/postgres-auth-server.lua",
    },
    conf = {
      ["config.yaml"] = "etc/config.yaml.example",
    },
    lua = {
      ["postgres-auth-server.views.login"] = "lib/postgres-auth-server/views/login.etlua",
      ["postgres-auth-server.views.edituser"] = "lib/postgres-auth-server/views/edituser.etlua",
      ["postgres-auth-server.views.mainlayout"] = "lib/postgres-auth-server/views/mainlayout.etlua",
      ["postgres-auth-server.views.plainlayout"] = "lib/postgres-auth-server/views/plainlayout.etlua",
      ["postgres-auth-server.views.deleteuser"] = "lib/postgres-auth-server/views/deleteuser.etlua",
      ["postgres-auth-server.views.index"] = "lib/postgres-auth-server/views/index.etlua",
      ["postgres-auth-server.models"]      = "lib/postgres-auth-server/models.lua",
      ["postgres-auth-server.migrations"]  = "lib/postgres-auth-server/migrations.lua",
      ["postgres-auth-server.getopt"]      = "lib/postgres-auth-server/getopt.lua",
      ["postgres-auth-server.models.user"] = "lib/postgres-auth-server/models/user.lua",
      ["postgres-auth-server.nginx-conf"] = "lib/postgres-auth-server/nginx-conf.lua",
      ["postgres-auth-server.cli"] = "lib/postgres-auth-server/cli.lua",
      ["postgres-auth-server.config"] = "lib/postgres-auth-server/config.lua",
      ["postgres-auth-server.webapp"] = "lib/postgres-auth-server/webapp.lua",
    },
  },
  copy_directories = {
    "share/postgres-auth-server/html",
  },
}

