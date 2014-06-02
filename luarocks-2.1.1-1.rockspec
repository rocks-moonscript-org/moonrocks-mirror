package = "LuaRocks"
version = "2.1.1-1"
source = {
   url = "http://luarocks.org/releases/luarocks-2.1.1.tar.gz",
   md5 = "911da64d6426340674ba478b40b26b4e",
   dir = "luarocks-2.1.1"
}
description = {
   summary = "A deployment and management system for Lua modules.",
   detailed = [[
      LuaRocks allows you to install Lua modules as self-contained
      packages called "rocks", which also contain version dependency
      information. This information is used both during installation,
      so that when one rock is requested all rocks it depends on are
      installed as well, and at run time, so that when a module is
      required, the correct version is loaded. LuaRocks supports both
      local and remote repositories, and multiple local rocks trees. 
   ]],
   homepage = "http://www.luarocks.org",
   license = "MIT/X11",
   maintainer = "Hisham Muhammad"
}
dependencies = {
   "lua >= 5.1",
}
build = {
   type = "builtin",
   modules = {
      ['luarocks.add'] = "src/luarocks/add.lua",
      ['luarocks.admin_remove'] = "src/luarocks/admin_remove.lua",
      ['luarocks.build'] = "src/luarocks/build.lua",
      ['luarocks.build.builtin'] = "src/luarocks/build/builtin.lua",
      ['luarocks.build.cmake'] = "src/luarocks/build/cmake.lua",
      ['luarocks.build.command'] = "src/luarocks/build/command.lua",
      ['luarocks.build.make'] = "src/luarocks/build/make.lua",
      ['luarocks.cache'] = "src/luarocks/cache.lua",
      ['luarocks.cfg'] = "src/luarocks/cfg.lua",
      ['luarocks.command_line'] = "src/luarocks/command_line.lua",
      ['luarocks.deps'] = "src/luarocks/deps.lua",
      ['luarocks.dir'] = "src/luarocks/dir.lua",
      ['luarocks.download'] = "src/luarocks/download.lua",
      ['luarocks.fetch'] = "src/luarocks/fetch.lua",
      ['luarocks.fetch.cvs'] = "src/luarocks/fetch/cvs.lua",
      ['luarocks.fetch.git'] = "src/luarocks/fetch/git.lua",
      ['luarocks.fetch.git_file'] = "src/luarocks/fetch/git_file.lua",
      ['luarocks.fetch.hg'] = "src/luarocks/fetch/hg.lua",
      ['luarocks.fetch.sscm'] = "src/luarocks/fetch/sscm.lua",
      ['luarocks.fetch.svn'] = "src/luarocks/fetch/svn.lua",
      ['luarocks.fs'] = "src/luarocks/fs.lua",
      ['luarocks.fs.lua'] = "src/luarocks/fs/lua.lua",
      ['luarocks.fs.unix'] = "src/luarocks/fs/unix.lua",
      ['luarocks.fs.unix.tools'] = "src/luarocks/fs/unix/tools.lua",
      ['luarocks.fs.win32'] = "src/luarocks/fs/win32.lua",
      ['luarocks.fs.win32.tools'] = "src/luarocks/fs/win32/tools.lua",
      ['luarocks.help'] = "src/luarocks/help.lua",
      ['luarocks.index'] = "src/luarocks/index.lua",
      ['luarocks.install'] = "src/luarocks/install.lua",
      ['luarocks.lint'] = "src/luarocks/lint.lua",
      ['luarocks.list'] = "src/luarocks/list.lua",
      ['luarocks.loader'] = "src/luarocks/loader.lua",
      ['luarocks.make'] = "src/luarocks/make.lua",
      ['luarocks.make_manifest'] = "src/luarocks/make_manifest.lua",
      ['luarocks.manif'] = "src/luarocks/manif.lua",
      ['luarocks.manif_core'] = "src/luarocks/manif_core.lua",
      ['luarocks.new_version'] = "src/luarocks/new_version.lua",
      ['luarocks.pack'] = "src/luarocks/pack.lua",
      ['luarocks.path'] = "src/luarocks/path.lua",
      ['luarocks.persist'] = "src/luarocks/persist.lua",
      ['luarocks.purge'] = "src/luarocks/purge.lua",
      ['luarocks.refresh_cache'] = "src/luarocks/refresh_cache.lua",
      ['luarocks.remove'] = "src/luarocks/remove.lua",
      ['luarocks.repos'] = "src/luarocks/repos.lua",
      ['luarocks.require'] = "src/luarocks/require.lua",
      ['luarocks.search'] = "src/luarocks/search.lua",
      ['luarocks.show'] = "src/luarocks/show.lua",
      ['luarocks.tools.patch'] = "src/luarocks/tools/patch.lua",
      ['luarocks.tools.tar'] = "src/luarocks/tools/tar.lua",
      ['luarocks.tools.zip'] = "src/luarocks/tools/zip.lua",
      ['luarocks.type_check'] = "src/luarocks/type_check.lua",
      ['luarocks.unpack'] = "src/luarocks/unpack.lua",
      ['luarocks.util'] = "src/luarocks/util.lua",
      ['luarocks.validate'] = "src/luarocks/validate.lua",
      ['luarocks.write_rockspec'] = "src/luarocks/write_rockspec.lua"
   },
   install = {
      bin = {
         ['luarocks'] = "src/bin/luarocks",
         ['luarocks-admin'] = "src/bin/luarocks-admin",
      }
   }
}
