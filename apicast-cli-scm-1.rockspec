package = "apicast-cli"
version = "scm-1"
source = {
  url = "git://github.com/3scale/apicast-cli"
}
description = {
  summary = "A Lua tool to bootstrap [apicast](https://github.com/3scale/apicast) project.",
  detailed = [[
  apicast-cli is the tool to generate your Openresty project using apicast
  ]],
  homepage = "https://github.com/3scale/apicast-cli",
  license = "Apache License 2.0"
}
dependencies = {
  "argparse",
  "ansicolors",
  "penlight-ffi",
  "liquid",
  "debugger",
  "busted-ffi",
  "inspect",
}
build = {
  type = "builtin",
  modules = {
    ['apicast-cli.cmd'] = "src/apicast-cli/cmd.lua",
    ['apicast-cli.cli'] = "src/apicast-cli/cli.lua",
    ['apicast-cli.cmd.generator'] = "src/apicast-cli/cmd/generator.lua",
    ['apicast-cli.cmd.busted'] = "src/apicast-cli/cmd/busted.lua",
    ['apicast-cli.utils.path'] = "src/apicast-cli/utils/path.lua",
    ['apicast-cli.cli.create'] = "src/apicast-cli/cli/create.lua",
    ['apicast-cli.cli.start'] = "src/apicast-cli/cli/start.lua",
    ['apicast-cli.cli.busted'] = "src/apicast-cli/cli/busted.lua",
    ['apicast-cli.configuration'] = "src/apicast-cli/configuration.lua",
    ['apicast-cli.application'] = "src/apicast-cli/application.lua",
    ['apicast-cli.utils.exec'] = "src/apicast-cli/utils/exec.lua",
    ['apicast-cli.template'] = "src/apicast-cli/template.lua",
    ['apicast-cli.project'] = "src/apicast-cli/project.lua",
    ['apicast-cli.rockspec'] = "src/apicast-cli/rockspec.lua",
    ['apicast-cli.busted_wrapper'] = "src/apicast-cli/busted_wrapper.lua",
  },
  install = {
    lua = {
      ['apicast-cli.blank-app.readme'] = "src/apicast-cli/blank-app/README.md",
      ['apicast-cli.blank-app.nginx.main'] = "src/apicast-cli/blank-app/nginx/main.conf.liquid",
      ['apicast-cli.blank-app.config.production'] = "src/apicast-cli/blank-app/config/production.lua",
      ['apicast-cli.blank-app.config.development'] = "src/apicast-cli/blank-app/config/development.lua",
      ['apicast-cli.blank-app.src.blank-app.init'] = "src/apicast-cli/blank-app/src/blank-app/init.lua",
      ['apicast-cli.blank-app.s2i.bin.run'] = "src/apicast-cli/blank-app/.s2i/bin/run",
      ['apicast-cli.blank-app.s2i.environment'] = "src/apicast-cli/blank-app/.s2i/environment",
      ['apicast-cli.blank-app.bustedrc'] = "src/apicast-cli/blank-app/.busted",
      ['apicast-cli.blank-app.spec.blank-app_spec'] = "src/apicast-cli/blank-app/spec/blank-app_spec.lua",
    },
    bin = {
      ['apicast-cli'] = "bin/apicast-cli",
    }
  }
}
