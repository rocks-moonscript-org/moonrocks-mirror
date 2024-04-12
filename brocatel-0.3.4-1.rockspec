rockspec_format = "3.0"
package = "brocatel"
version = "0.3.4-1"
source = {
   url = "git+https://github.com/gudzpoz/brocatel.git",
}
description = {
   summary = "A VM that runs compiled brocatel scripts.",
   detailed = [[
   ]],
   homepage = "https://gudzpoz.github.io/brocatel",
   license = "MIT",
   issues_url = "https://github.com/gudzpoz/brocatel/issues",
}
build = {
   type = "builtin",
   modules = {
      brocatel = "src/brocatel.lua",
      ["mdvm.env_api"] = "src/mdvm/env_api.lua",
      ["mdvm.history"] = "src/mdvm/history.lua",
      ["mdvm.lookup"] = "src/mdvm/lookup.lua",
      ["mdvm.savedata"] = "src/mdvm/savedata.lua",
      ["mdvm.stacked_env"] = "src/mdvm/stacked_env.lua",
      ["mdvm.table_path"] = "src/mdvm/table_path.lua",
      ["mdvm.utils"] = "src/mdvm/utils.lua",
      ["mdvm.vm"] = "src/mdvm/vm.lua",
   },
   install = {
      bin = {
         brocatel = "src/cli.lua",
      },
   },
   copy_directories = {
      "doc",
   },
}
