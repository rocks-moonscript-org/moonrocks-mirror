package = "typer"
version = "0.1.0-1"

source = {
  url = "git+https://github.com/ColinKennedy/lua-typer.git",
  tag = "v0.1.0",
}

description = {
  summary = "mypy --strict, for Lua",
  detailed = [[
    A static analysis tool for Lua that reports where LuaLS type annotations are
    missing or too vague. Report-only; it never edits files.

    typer builds a project-wide type index, resolves `require` against LUA_PATH
    and friends, reads third-party and standard-library definitions, and
    supports `---@meta` stub files for code it cannot read. A missing definition
    is an error to fix, not something typer papers over -- and there is no
    baseline mode, deliberately.
  ]],
  homepage = "https://github.com/ColinKennedy/lua-typer",
  license = "MIT",
}

dependencies = {
  "lua >= 5.1",
  -- Optional, both detected at runtime:
  --   luafilesystem -- fast directory walks, and enables the on-disk cache
  --   luasocket     -- `typer daemon`
}

build = {
  type = "builtin",
  modules = {
    ["typer"] = "lua/typer/init.lua",
    ["typer.analyze"] = "lua/typer/analyze.lua",
    ["typer.check"] = "lua/typer/check.lua",
    ["typer.cli"] = "lua/typer/cli.lua",
    ["typer.compat"] = "lua/typer/compat.lua",
    ["typer.config"] = "lua/typer/config.lua",
    ["typer.daemon"] = "lua/typer/daemon.lua",
    ["typer.diagnostic"] = "lua/typer/diagnostic.lua",
    ["typer.docblock"] = "lua/typer/docblock.lua",
    ["typer.fs"] = "lua/typer/fs.lua",
    ["typer.json"] = "lua/typer/json.lua",
    ["typer.lexer"] = "lua/typer/lexer.lua",
    ["typer.parser"] = "lua/typer/parser.lua",
    ["typer.registry"] = "lua/typer/registry.lua",
    ["typer.suppress"] = "lua/typer/suppress.lua",
    ["typer.annot.tags"] = "lua/typer/annot/tags.lua",
    ["typer.annot.types"] = "lua/typer/annot/types.lua",
    ["typer.report.json"] = "lua/typer/report/json.lua",
    ["typer.report.vimgrep"] = "lua/typer/report/vimgrep.lua",
    ["typer.resolve.cache"] = "lua/typer/resolve/cache.lua",
    ["typer.resolve.modpath"] = "lua/typer/resolve/modpath.lua",
    ["typer.resolve.search"] = "lua/typer/resolve/search.lua",
    ["typer.rules.classes"] = "lua/typer/rules/classes.lua",
    ["typer.rules.completeness"] = "lua/typer/rules/completeness.lua",
    ["typer.rules.declarations"] = "lua/typer/rules/declarations.lua",
    ["typer.rules.functions"] = "lua/typer/rules/functions.lua",
    ["typer.rules.globals"] = "lua/typer/rules/globals.lua",
  },
  install = {
    bin = { typer = "bin/typer" },
  },
  -- The bundled stdlib stubs are data, not modules: they are read as source,
  -- never `require`d. `copy_directories` places them beside the rock so
  -- resolve/search.lua can find them relative to lua/typer/.
  copy_directories = { "stubs" },
}
