-- Release template for the LuaRocks channel (lumen-oss/luarocks-tag-release,
-- driven by .github/workflows/luarocks-publish.yml). The placeholders in
-- this file are filled in by the action from the pushed tag and the
-- workflow inputs; this is a template, not a local development rockspec.
--
-- One thing here is not the action's generated default: source.dir. The
-- client lives at clients/nvim in the epher monorepo (ADR-0066: clients
-- are version-locked to epher, not separate repositories), and the
-- action fetches the tag's GitHub archive and builds from the archive
-- root, where no lua/ or runtime directories exist. Pointing source.dir
-- at the subdirectory makes the standard Neovim plugin layout visible to
-- the action's defaults: lua/ is installed by the builtin convention and
-- build.copy_directories copies the runtime directories (the default
-- expands to Neovim's runtimepath names; only directories that exist are
-- copied).
--
-- The layout this expects (lua/, ftdetect/, ftplugin/, syntax/) is kept
-- in sync with clients/vim by clients/nvim/sync-runtime.py. The rock name
-- comes from the workflow (epher); the version comes from the pushed tag
-- (v0.5.57 becomes rock 0.5.57-1).

local git_ref = 'v0.5.72'
local modrev = '0.5.72'
local specrev = '1'

local repo_url = 'https://github.com/upyesp/epher'

rockspec_format = '3.0'
package = 'epher'
version = modrev .. '-' .. specrev

description = {
  summary = 'A calculator language with inline answers for every statement',
  detailed = [[
epher is a calculator language: you write ordinary math, with units
that convert, and every statement's answer appears inline right next
to the line that produced it.
The rock ships the runtime files and the Lua module that wire the
shared epher language server into Neovim: live diagnostics, inline
answers as inlay hints, hover signatures, completion, definition
jumps, and the EpherRun results window.
The epher-lsp binary is a separate download from the GitHub
releases page; after that everything runs locally.]],
  labels = { 'neovim', 'lsp', 'syntax' } ,
  homepage = 'https://upyesp.github.io/epher/',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'epher-' .. '0.5.72' .. '/clients/nvim',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
