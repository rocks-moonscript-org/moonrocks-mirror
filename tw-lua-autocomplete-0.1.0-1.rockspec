package = "tw-lua-autocomplete"
version = "0.1.0-1"
source = {
   url = "git+https://github.com/Warhammer-Mods/tw-lua-autocomplete",
   tag = "v0.1.0"
}
description = {
   summary = [[
Provides definitions for Total War games Lua API: types, static objects, functions, etc.
]],
   detailed = [[
Provides definitions for Total War games Lua API: types, static objects, functions, etc.
]],
   homepage = "https://github.com/Warhammer-Mods/tw-lua-autocomplete",
   license = "MIT"
}
dependencies = {
   "lua ~> 5.1"
}
build = {
   type = "builtin",
   modules = {
      [""] = ".lua",
      alias = "alias.lua",
      base = {
         sources = ".install/lua-5.1.5/src/lbaselib.c"
      },
      custom_effects = "custom_effects.lua",
      ddt = {
         sources = ".install/luarocks-3.7.0/spec/fixtures/double_deploy_type/ddt.c"
      },
      debug = {
         sources = ".install/lua-5.1.5/src/ldblib.c"
      },
      dumps = "dumps.lua",
      ["install.lua-5.1.5.etc.all"] = {
         sources = ".install/lua-5.1.5/etc/all.c"
      },
      ["install.lua-5.1.5.etc.min"] = {
         sources = ".install/lua-5.1.5/etc/min.c"
      },
      ["install.lua-5.1.5.etc.noparser"] = {
         sources = ".install/lua-5.1.5/etc/noparser.c"
      },
      ["install.lua-5.1.5.etc.strict"] = ".install/lua-5.1.5/etc/strict.lua",
      ["install.lua-5.1.5.src.lapi"] = {
         sources = ".install/lua-5.1.5/src/lapi.c"
      },
      ["install.lua-5.1.5.src.lauxlib"] = {
         sources = ".install/lua-5.1.5/src/lauxlib.c"
      },
      ["install.lua-5.1.5.src.lcode"] = {
         sources = ".install/lua-5.1.5/src/lcode.c"
      },
      ["install.lua-5.1.5.src.ldebug"] = {
         sources = ".install/lua-5.1.5/src/ldebug.c"
      },
      ["install.lua-5.1.5.src.ldo"] = {
         sources = ".install/lua-5.1.5/src/ldo.c"
      },
      ["install.lua-5.1.5.src.ldump"] = {
         sources = ".install/lua-5.1.5/src/ldump.c"
      },
      ["install.lua-5.1.5.src.lfunc"] = {
         sources = ".install/lua-5.1.5/src/lfunc.c"
      },
      ["install.lua-5.1.5.src.lgc"] = {
         sources = ".install/lua-5.1.5/src/lgc.c"
      },
      ["install.lua-5.1.5.src.linit"] = {
         sources = ".install/lua-5.1.5/src/linit.c"
      },
      ["install.lua-5.1.5.src.llex"] = {
         sources = ".install/lua-5.1.5/src/llex.c"
      },
      ["install.lua-5.1.5.src.lmem"] = {
         sources = ".install/lua-5.1.5/src/lmem.c"
      },
      ["install.lua-5.1.5.src.lobject"] = {
         sources = ".install/lua-5.1.5/src/lobject.c"
      },
      ["install.lua-5.1.5.src.lopcodes"] = {
         sources = ".install/lua-5.1.5/src/lopcodes.c"
      },
      ["install.lua-5.1.5.src.lparser"] = {
         sources = ".install/lua-5.1.5/src/lparser.c"
      },
      ["install.lua-5.1.5.src.lstate"] = {
         sources = ".install/lua-5.1.5/src/lstate.c"
      },
      ["install.lua-5.1.5.src.lstring"] = {
         sources = ".install/lua-5.1.5/src/lstring.c"
      },
      ["install.lua-5.1.5.src.ltable"] = {
         sources = ".install/lua-5.1.5/src/ltable.c"
      },
      ["install.lua-5.1.5.src.ltm"] = {
         sources = ".install/lua-5.1.5/src/ltm.c"
      },
      ["install.lua-5.1.5.src.lua"] = {
         sources = ".install/lua-5.1.5/src/lua.c"
      },
      ["install.lua-5.1.5.src.luac"] = {
         sources = ".install/lua-5.1.5/src/luac.c"
      },
      ["install.lua-5.1.5.src.lundump"] = {
         sources = ".install/lua-5.1.5/src/lundump.c"
      },
      ["install.lua-5.1.5.src.lvm"] = {
         sources = ".install/lua-5.1.5/src/lvm.c"
      },
      ["install.lua-5.1.5.src.lzio"] = {
         sources = ".install/lua-5.1.5/src/lzio.c"
      },
      ["install.lua-5.1.5.src.print"] = {
         sources = ".install/lua-5.1.5/src/print.c"
      },
      ["install.lua-5.1.5.test.bisect"] = ".install/lua-5.1.5/test/bisect.lua",
      ["install.lua-5.1.5.test.cf"] = ".install/lua-5.1.5/test/cf.lua",
      ["install.lua-5.1.5.test.echo"] = ".install/lua-5.1.5/test/echo.lua",
      ["install.lua-5.1.5.test.env"] = ".install/lua-5.1.5/test/env.lua",
      ["install.lua-5.1.5.test.factorial"] = ".install/lua-5.1.5/test/factorial.lua",
      ["install.lua-5.1.5.test.fib"] = ".install/lua-5.1.5/test/fib.lua",
      ["install.lua-5.1.5.test.fibfor"] = ".install/lua-5.1.5/test/fibfor.lua",
      ["install.lua-5.1.5.test.globals"] = ".install/lua-5.1.5/test/globals.lua",
      ["install.lua-5.1.5.test.hello"] = ".install/lua-5.1.5/test/hello.lua",
      ["install.lua-5.1.5.test.life"] = ".install/lua-5.1.5/test/life.lua",
      ["install.lua-5.1.5.test.luac"] = ".install/lua-5.1.5/test/luac.lua",
      ["install.lua-5.1.5.test.printf"] = ".install/lua-5.1.5/test/printf.lua",
      ["install.lua-5.1.5.test.readonly"] = ".install/lua-5.1.5/test/readonly.lua",
      ["install.lua-5.1.5.test.sieve"] = ".install/lua-5.1.5/test/sieve.lua",
      ["install.lua-5.1.5.test.sort"] = ".install/lua-5.1.5/test/sort.lua",
      ["install.lua-5.1.5.test.table"] = ".install/lua-5.1.5/test/table.lua",
      ["install.lua-5.1.5.test.trace-calls"] = ".install/lua-5.1.5/test/trace-calls.lua",
      ["install.lua-5.1.5.test.trace-globals"] = ".install/lua-5.1.5/test/trace-globals.lua",
      ["install.lua-5.1.5.test.xd"] = ".install/lua-5.1.5/test/xd.lua",
      ["install.luarocks-3.7.0..luarocks.config-5.1"] = ".install/luarocks-3.7.0/.luarocks/config-5.1.lua",
      ["install.luarocks-3.7.0..luarocks.default-lua-version"] = ".install/luarocks-3.7.0/.luarocks/default-lua-version.lua",
      ["install.luarocks-3.7.0.build.config-5.1"] = ".install/luarocks-3.7.0/build/config-5.1.lua",
      ["install.luarocks-3.7.0.spec.add_spec"] = ".install/luarocks-3.7.0/spec/add_spec.lua",
      ["install.luarocks-3.7.0.spec.build_spec"] = ".install/luarocks-3.7.0/spec/build_spec.lua",
      ["install.luarocks-3.7.0.spec.cmd_spec"] = ".install/luarocks-3.7.0/spec/cmd_spec.lua",
      ["install.luarocks-3.7.0.spec.config_spec"] = ".install/luarocks-3.7.0/spec/config_spec.lua",
      ["install.luarocks-3.7.0.spec.deps_spec"] = ".install/luarocks-3.7.0/spec/deps_spec.lua",
      ["install.luarocks-3.7.0.spec.dir_spec"] = ".install/luarocks-3.7.0/spec/dir_spec.lua",
      ["install.luarocks-3.7.0.spec.doc_spec"] = ".install/luarocks-3.7.0/spec/doc_spec.lua",
      ["install.luarocks-3.7.0.spec.download_spec"] = ".install/luarocks-3.7.0/spec/download_spec.lua",
      ["install.luarocks-3.7.0.spec.dummy_spec"] = ".install/luarocks-3.7.0/spec/dummy_spec.lua",
      ["install.luarocks-3.7.0.spec.external_spec"] = ".install/luarocks-3.7.0/spec/external_spec.lua",
      ["install.luarocks-3.7.0.spec.fetch_spec"] = ".install/luarocks-3.7.0/spec/fetch_spec.lua",
      ["install.luarocks-3.7.0.spec.fixtures.a_rock"] = ".install/luarocks-3.7.0/spec/fixtures/a_rock.lua",
      ["install.luarocks-3.7.0.spec.fixtures.busted_project.spec.sum_spec"] = ".install/luarocks-3.7.0/spec/fixtures/busted_project/spec/sum_spec.lua",
      ["install.luarocks-3.7.0.spec.fixtures.busted_project.sum"] = ".install/luarocks-3.7.0/spec/fixtures/busted_project/sum.lua",
      ["install.luarocks-3.7.0.spec.fixtures.double_deploy_type.ddt1"] = ".install/luarocks-3.7.0/spec/fixtures/double_deploy_type/ddt1.lua",
      ["install.luarocks-3.7.0.spec.fixtures.double_deploy_type.ddt2"] = ".install/luarocks-3.7.0/spec/fixtures/double_deploy_type/ddt2.lua",
      ["install.luarocks-3.7.0.spec.fixtures.fixturedep"] = {
         sources = ".install/luarocks-3.7.0/spec/fixtures/fixturedep.c"
      },
      ["install.luarocks-3.7.0.spec.fixtures.legacyexternalcommand"] = ".install/luarocks-3.7.0/spec/fixtures/legacyexternalcommand.lua",
      ["install.luarocks-3.7.0.spec.fixtures.mixed_deploy_type.mdt"] = ".install/luarocks-3.7.0/spec/fixtures/mixed_deploy_type/mdt.lua",
      ["install.luarocks-3.7.0.spec.fs_spec"] = ".install/luarocks-3.7.0/spec/fs_spec.lua",
      ["install.luarocks-3.7.0.spec.fun_spec"] = ".install/luarocks-3.7.0/spec/fun_spec.lua",
      ["install.luarocks-3.7.0.spec.help_spec"] = ".install/luarocks-3.7.0/spec/help_spec.lua",
      ["install.luarocks-3.7.0.spec.init_spec"] = ".install/luarocks-3.7.0/spec/init_spec.lua",
      ["install.luarocks-3.7.0.spec.install_spec"] = ".install/luarocks-3.7.0/spec/install_spec.lua",
      ["install.luarocks-3.7.0.spec.lint_spec"] = ".install/luarocks-3.7.0/spec/lint_spec.lua",
      ["install.luarocks-3.7.0.spec.list_spec"] = ".install/luarocks-3.7.0/spec/list_spec.lua",
      ["install.luarocks-3.7.0.spec.loader_spec"] = ".install/luarocks-3.7.0/spec/loader_spec.lua",
      ["install.luarocks-3.7.0.spec.make_manifest_spec"] = ".install/luarocks-3.7.0/spec/make_manifest_spec.lua",
      ["install.luarocks-3.7.0.spec.make_spec"] = ".install/luarocks-3.7.0/spec/make_spec.lua",
      ["install.luarocks-3.7.0.spec.new_version_spec"] = ".install/luarocks-3.7.0/spec/new_version_spec.lua",
      ["install.luarocks-3.7.0.spec.pack_spec"] = ".install/luarocks-3.7.0/spec/pack_spec.lua",
      ["install.luarocks-3.7.0.spec.path_spec"] = ".install/luarocks-3.7.0/spec/path_spec.lua",
      ["install.luarocks-3.7.0.spec.persist_spec"] = ".install/luarocks-3.7.0/spec/persist_spec.lua",
      ["install.luarocks-3.7.0.spec.purge_spec"] = ".install/luarocks-3.7.0/spec/purge_spec.lua",
      ["install.luarocks-3.7.0.spec.refresh_cache_spec"] = ".install/luarocks-3.7.0/spec/refresh_cache_spec.lua",
      ["install.luarocks-3.7.0.spec.remove_spec"] = ".install/luarocks-3.7.0/spec/remove_spec.lua",
      ["install.luarocks-3.7.0.spec.search_spec"] = ".install/luarocks-3.7.0/spec/search_spec.lua",
      ["install.luarocks-3.7.0.spec.show_spec"] = ".install/luarocks-3.7.0/spec/show_spec.lua",
      ["install.luarocks-3.7.0.spec.sysdetect_spec"] = ".install/luarocks-3.7.0/spec/sysdetect_spec.lua",
      ["install.luarocks-3.7.0.spec.test_spec"] = ".install/luarocks-3.7.0/spec/test_spec.lua",
      ["install.luarocks-3.7.0.spec.tools_spec"] = ".install/luarocks-3.7.0/spec/tools_spec.lua",
      ["install.luarocks-3.7.0.spec.unpack_spec"] = ".install/luarocks-3.7.0/spec/unpack_spec.lua",
      ["install.luarocks-3.7.0.spec.upload_spec"] = ".install/luarocks-3.7.0/spec/upload_spec.lua",
      ["install.luarocks-3.7.0.spec.util.git_repo"] = ".install/luarocks-3.7.0/spec/util/git_repo.lua",
      ["install.luarocks-3.7.0.spec.util.mock-server"] = ".install/luarocks-3.7.0/spec/util/mock-server.lua",
      ["install.luarocks-3.7.0.spec.util.test_env"] = ".install/luarocks-3.7.0/spec/util/test_env.lua",
      ["install.luarocks-3.7.0.spec.util_spec"] = ".install/luarocks-3.7.0/spec/util_spec.lua",
      ["install.luarocks-3.7.0.spec.which_spec"] = ".install/luarocks-3.7.0/spec/which_spec.lua",
      ["install.luarocks-3.7.0.spec.write_rockspec_spec"] = ".install/luarocks-3.7.0/spec/write_rockspec_spec.lua",
      ["install.luarocks-3.7.0.src.luarocks.admin.cache"] = ".install/luarocks-3.7.0/src/luarocks/admin/cache.lua",
      ["install.luarocks-3.7.0.src.luarocks.admin.cmd.add"] = ".install/luarocks-3.7.0/src/luarocks/admin/cmd/add.lua",
      ["install.luarocks-3.7.0.src.luarocks.admin.cmd.make_manifest"] = ".install/luarocks-3.7.0/src/luarocks/admin/cmd/make_manifest.lua",
      ["install.luarocks-3.7.0.src.luarocks.admin.cmd.refresh_cache"] = ".install/luarocks-3.7.0/src/luarocks/admin/cmd/refresh_cache.lua",
      ["install.luarocks-3.7.0.src.luarocks.admin.cmd.remove"] = ".install/luarocks-3.7.0/src/luarocks/admin/cmd/remove.lua",
      ["install.luarocks-3.7.0.src.luarocks.admin.index"] = ".install/luarocks-3.7.0/src/luarocks/admin/index.lua",
      ["install.luarocks-3.7.0.src.luarocks.argparse"] = ".install/luarocks-3.7.0/src/luarocks/argparse.lua",
      ["install.luarocks-3.7.0.src.luarocks.build"] = ".install/luarocks-3.7.0/src/luarocks/build.lua",
      ["install.luarocks-3.7.0.src.luarocks.build.builtin"] = ".install/luarocks-3.7.0/src/luarocks/build/builtin.lua",
      ["install.luarocks-3.7.0.src.luarocks.build.cmake"] = ".install/luarocks-3.7.0/src/luarocks/build/cmake.lua",
      ["install.luarocks-3.7.0.src.luarocks.build.command"] = ".install/luarocks-3.7.0/src/luarocks/build/command.lua",
      ["install.luarocks-3.7.0.src.luarocks.build.make"] = ".install/luarocks-3.7.0/src/luarocks/build/make.lua",
      ["install.luarocks-3.7.0.src.luarocks.cmd"] = ".install/luarocks-3.7.0/src/luarocks/cmd.lua",
      ["install.luarocks-3.7.0.src.luarocks.cmd.build"] = ".install/luarocks-3.7.0/src/luarocks/cmd/build.lua",
      ["install.luarocks-3.7.0.src.luarocks.cmd.config"] = ".install/luarocks-3.7.0/src/luarocks/cmd/config.lua",
      ["install.luarocks-3.7.0.src.luarocks.cmd.doc"] = ".install/luarocks-3.7.0/src/luarocks/cmd/doc.lua",
      ["install.luarocks-3.7.0.src.luarocks.cmd.download"] = ".install/luarocks-3.7.0/src/luarocks/cmd/download.lua",
      ["install.luarocks-3.7.0.src.luarocks.cmd.init"] = ".install/luarocks-3.7.0/src/luarocks/cmd/init.lua",
      ["install.luarocks-3.7.0.src.luarocks.cmd.install"] = ".install/luarocks-3.7.0/src/luarocks/cmd/install.lua",
      ["install.luarocks-3.7.0.src.luarocks.cmd.lint"] = ".install/luarocks-3.7.0/src/luarocks/cmd/lint.lua",
      ["install.luarocks-3.7.0.src.luarocks.cmd.list"] = ".install/luarocks-3.7.0/src/luarocks/cmd/list.lua",
      ["install.luarocks-3.7.0.src.luarocks.cmd.make"] = ".install/luarocks-3.7.0/src/luarocks/cmd/make.lua",
      ["install.luarocks-3.7.0.src.luarocks.cmd.new_version"] = ".install/luarocks-3.7.0/src/luarocks/cmd/new_version.lua",
      ["install.luarocks-3.7.0.src.luarocks.cmd.pack"] = ".install/luarocks-3.7.0/src/luarocks/cmd/pack.lua",
      ["install.luarocks-3.7.0.src.luarocks.cmd.path"] = ".install/luarocks-3.7.0/src/luarocks/cmd/path.lua",
      ["install.luarocks-3.7.0.src.luarocks.cmd.purge"] = ".install/luarocks-3.7.0/src/luarocks/cmd/purge.lua",
      ["install.luarocks-3.7.0.src.luarocks.cmd.remove"] = ".install/luarocks-3.7.0/src/luarocks/cmd/remove.lua",
      ["install.luarocks-3.7.0.src.luarocks.cmd.search"] = ".install/luarocks-3.7.0/src/luarocks/cmd/search.lua",
      ["install.luarocks-3.7.0.src.luarocks.cmd.show"] = ".install/luarocks-3.7.0/src/luarocks/cmd/show.lua",
      ["install.luarocks-3.7.0.src.luarocks.cmd.test"] = ".install/luarocks-3.7.0/src/luarocks/cmd/test.lua",
      ["install.luarocks-3.7.0.src.luarocks.cmd.unpack"] = ".install/luarocks-3.7.0/src/luarocks/cmd/unpack.lua",
      ["install.luarocks-3.7.0.src.luarocks.cmd.upload"] = ".install/luarocks-3.7.0/src/luarocks/cmd/upload.lua",
      ["install.luarocks-3.7.0.src.luarocks.cmd.which"] = ".install/luarocks-3.7.0/src/luarocks/cmd/which.lua",
      ["install.luarocks-3.7.0.src.luarocks.cmd.write_rockspec"] = ".install/luarocks-3.7.0/src/luarocks/cmd/write_rockspec.lua",
      ["install.luarocks-3.7.0.src.luarocks.core.cfg"] = ".install/luarocks-3.7.0/src/luarocks/core/cfg.lua",
      ["install.luarocks-3.7.0.src.luarocks.core.dir"] = ".install/luarocks-3.7.0/src/luarocks/core/dir.lua",
      ["install.luarocks-3.7.0.src.luarocks.core.manif"] = ".install/luarocks-3.7.0/src/luarocks/core/manif.lua",
      ["install.luarocks-3.7.0.src.luarocks.core.path"] = ".install/luarocks-3.7.0/src/luarocks/core/path.lua",
      ["install.luarocks-3.7.0.src.luarocks.core.persist"] = ".install/luarocks-3.7.0/src/luarocks/core/persist.lua",
      ["install.luarocks-3.7.0.src.luarocks.core.sysdetect"] = ".install/luarocks-3.7.0/src/luarocks/core/sysdetect.lua",
      ["install.luarocks-3.7.0.src.luarocks.core.util"] = ".install/luarocks-3.7.0/src/luarocks/core/util.lua",
      ["install.luarocks-3.7.0.src.luarocks.core.vers"] = ".install/luarocks-3.7.0/src/luarocks/core/vers.lua",
      ["install.luarocks-3.7.0.src.luarocks.deplocks"] = ".install/luarocks-3.7.0/src/luarocks/deplocks.lua",
      ["install.luarocks-3.7.0.src.luarocks.deps"] = ".install/luarocks-3.7.0/src/luarocks/deps.lua",
      ["install.luarocks-3.7.0.src.luarocks.dir"] = ".install/luarocks-3.7.0/src/luarocks/dir.lua",
      ["install.luarocks-3.7.0.src.luarocks.download"] = ".install/luarocks-3.7.0/src/luarocks/download.lua",
      ["install.luarocks-3.7.0.src.luarocks.fetch"] = ".install/luarocks-3.7.0/src/luarocks/fetch.lua",
      ["install.luarocks-3.7.0.src.luarocks.fetch.cvs"] = ".install/luarocks-3.7.0/src/luarocks/fetch/cvs.lua",
      ["install.luarocks-3.7.0.src.luarocks.fetch.git"] = ".install/luarocks-3.7.0/src/luarocks/fetch/git.lua",
      ["install.luarocks-3.7.0.src.luarocks.fetch.git_file"] = ".install/luarocks-3.7.0/src/luarocks/fetch/git_file.lua",
      ["install.luarocks-3.7.0.src.luarocks.fetch.git_http"] = ".install/luarocks-3.7.0/src/luarocks/fetch/git_http.lua",
      ["install.luarocks-3.7.0.src.luarocks.fetch.git_https"] = ".install/luarocks-3.7.0/src/luarocks/fetch/git_https.lua",
      ["install.luarocks-3.7.0.src.luarocks.fetch.git_ssh"] = ".install/luarocks-3.7.0/src/luarocks/fetch/git_ssh.lua",
      ["install.luarocks-3.7.0.src.luarocks.fetch.hg"] = ".install/luarocks-3.7.0/src/luarocks/fetch/hg.lua",
      ["install.luarocks-3.7.0.src.luarocks.fetch.hg_http"] = ".install/luarocks-3.7.0/src/luarocks/fetch/hg_http.lua",
      ["install.luarocks-3.7.0.src.luarocks.fetch.hg_https"] = ".install/luarocks-3.7.0/src/luarocks/fetch/hg_https.lua",
      ["install.luarocks-3.7.0.src.luarocks.fetch.hg_ssh"] = ".install/luarocks-3.7.0/src/luarocks/fetch/hg_ssh.lua",
      ["install.luarocks-3.7.0.src.luarocks.fetch.sscm"] = ".install/luarocks-3.7.0/src/luarocks/fetch/sscm.lua",
      ["install.luarocks-3.7.0.src.luarocks.fetch.svn"] = ".install/luarocks-3.7.0/src/luarocks/fetch/svn.lua",
      ["install.luarocks-3.7.0.src.luarocks.fs"] = ".install/luarocks-3.7.0/src/luarocks/fs.lua",
      ["install.luarocks-3.7.0.src.luarocks.fs.freebsd"] = ".install/luarocks-3.7.0/src/luarocks/fs/freebsd.lua",
      ["install.luarocks-3.7.0.src.luarocks.fs.linux"] = ".install/luarocks-3.7.0/src/luarocks/fs/linux.lua",
      ["install.luarocks-3.7.0.src.luarocks.fs.lua"] = ".install/luarocks-3.7.0/src/luarocks/fs/lua.lua",
      ["install.luarocks-3.7.0.src.luarocks.fs.macosx"] = ".install/luarocks-3.7.0/src/luarocks/fs/macosx.lua",
      ["install.luarocks-3.7.0.src.luarocks.fs.netbsd"] = ".install/luarocks-3.7.0/src/luarocks/fs/netbsd.lua",
      ["install.luarocks-3.7.0.src.luarocks.fs.tools"] = ".install/luarocks-3.7.0/src/luarocks/fs/tools.lua",
      ["install.luarocks-3.7.0.src.luarocks.fs.unix"] = ".install/luarocks-3.7.0/src/luarocks/fs/unix.lua",
      ["install.luarocks-3.7.0.src.luarocks.fs.unix.tools"] = ".install/luarocks-3.7.0/src/luarocks/fs/unix/tools.lua",
      ["install.luarocks-3.7.0.src.luarocks.fs.win32"] = ".install/luarocks-3.7.0/src/luarocks/fs/win32.lua",
      ["install.luarocks-3.7.0.src.luarocks.fs.win32.tools"] = ".install/luarocks-3.7.0/src/luarocks/fs/win32/tools.lua",
      ["install.luarocks-3.7.0.src.luarocks.fun"] = ".install/luarocks-3.7.0/src/luarocks/fun.lua",
      ["install.luarocks-3.7.0.src.luarocks.loader"] = ".install/luarocks-3.7.0/src/luarocks/loader.lua",
      ["install.luarocks-3.7.0.src.luarocks.manif"] = ".install/luarocks-3.7.0/src/luarocks/manif.lua",
      ["install.luarocks-3.7.0.src.luarocks.manif.writer"] = ".install/luarocks-3.7.0/src/luarocks/manif/writer.lua",
      ["install.luarocks-3.7.0.src.luarocks.pack"] = ".install/luarocks-3.7.0/src/luarocks/pack.lua",
      ["install.luarocks-3.7.0.src.luarocks.path"] = ".install/luarocks-3.7.0/src/luarocks/path.lua",
      ["install.luarocks-3.7.0.src.luarocks.persist"] = ".install/luarocks-3.7.0/src/luarocks/persist.lua",
      ["install.luarocks-3.7.0.src.luarocks.queries"] = ".install/luarocks-3.7.0/src/luarocks/queries.lua",
      ["install.luarocks-3.7.0.src.luarocks.remove"] = ".install/luarocks-3.7.0/src/luarocks/remove.lua",
      ["install.luarocks-3.7.0.src.luarocks.repos"] = ".install/luarocks-3.7.0/src/luarocks/repos.lua",
      ["install.luarocks-3.7.0.src.luarocks.require"] = ".install/luarocks-3.7.0/src/luarocks/require.lua",
      ["install.luarocks-3.7.0.src.luarocks.results"] = ".install/luarocks-3.7.0/src/luarocks/results.lua",
      ["install.luarocks-3.7.0.src.luarocks.rockspecs"] = ".install/luarocks-3.7.0/src/luarocks/rockspecs.lua",
      ["install.luarocks-3.7.0.src.luarocks.search"] = ".install/luarocks-3.7.0/src/luarocks/search.lua",
      ["install.luarocks-3.7.0.src.luarocks.signing"] = ".install/luarocks-3.7.0/src/luarocks/signing.lua",
      ["install.luarocks-3.7.0.src.luarocks.test"] = ".install/luarocks-3.7.0/src/luarocks/test.lua",
      ["install.luarocks-3.7.0.src.luarocks.test.busted"] = ".install/luarocks-3.7.0/src/luarocks/test/busted.lua",
      ["install.luarocks-3.7.0.src.luarocks.test.command"] = ".install/luarocks-3.7.0/src/luarocks/test/command.lua",
      ["install.luarocks-3.7.0.src.luarocks.tools.patch"] = ".install/luarocks-3.7.0/src/luarocks/tools/patch.lua",
      ["install.luarocks-3.7.0.src.luarocks.tools.tar"] = ".install/luarocks-3.7.0/src/luarocks/tools/tar.lua",
      ["install.luarocks-3.7.0.src.luarocks.tools.zip"] = ".install/luarocks-3.7.0/src/luarocks/tools/zip.lua",
      ["install.luarocks-3.7.0.src.luarocks.type.manifest"] = ".install/luarocks-3.7.0/src/luarocks/type/manifest.lua",
      ["install.luarocks-3.7.0.src.luarocks.type.rockspec"] = ".install/luarocks-3.7.0/src/luarocks/type/rockspec.lua",
      ["install.luarocks-3.7.0.src.luarocks.type_check"] = ".install/luarocks-3.7.0/src/luarocks/type_check.lua",
      ["install.luarocks-3.7.0.src.luarocks.upload.api"] = ".install/luarocks-3.7.0/src/luarocks/upload/api.lua",
      ["install.luarocks-3.7.0.src.luarocks.upload.multipart"] = ".install/luarocks-3.7.0/src/luarocks/upload/multipart.lua",
      ["install.luarocks-3.7.0.src.luarocks.util"] = ".install/luarocks-3.7.0/src/luarocks/util.lua",
      io = {
         sources = ".install/lua-5.1.5/src/liolib.c"
      },
      listeners = "listeners.lua",
      math = {
         sources = ".install/lua-5.1.5/src/lmathlib.c"
      },
      mdt = {
         sources = ".install/luarocks-3.7.0/spec/fixtures/mixed_deploy_type/mdt.c"
      },
      os = {
         sources = ".install/lua-5.1.5/src/loslib.c"
      },
      package = {
         sources = ".install/lua-5.1.5/src/loadlib.c"
      },
      prop_joe = "prop_joe.lua",
      string = {
         sources = ".install/lua-5.1.5/src/lstrlib.c"
      },
      table = {
         sources = ".install/lua-5.1.5/src/ltablib.c"
      },
      tw_lua_types = "tw_lua_types.lua",
      uimf = "uimf.lua",
      warhammer_2 = "warhammer_2.lua",
      with_external_dep = {
         sources = ".install/luarocks-3.7.0/spec/fixtures/with_external_dep.c"
      }
   }
}
