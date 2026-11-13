-- Release template for the LuaRocks channel (lumen-oss/luarocks-tag-release,
-- driven by .github/workflows/luarocks-publish.yml). The placeholders in
-- this file are filled in by the action from the pushed tag and the
-- workflow inputs; this is a template, not a local development rockspec.
--
-- One thing here is not the action's generated default: the source. The
-- client lives at clients/nvim in the epher monorepo (ADR-0066: clients
-- are version-locked to epher, not separate repositories), and the
-- action would fetch the tag's whole-repo GitHub archive. The archive
-- crossed luarocks.org's upload cap in the 0.9.7 train (the packed
-- src.rock hit ~19 MB after the benchmark payloads landed under
-- results/), so the rock now sources the nvim subtree only:
-- luarocks-publish.yml attaches epher-nvim-source-<tag>.zip (the
-- contents of clients/nvim at the tag) to the release before this
-- upload, and the packed src.rock stays well under the cap. The layout
-- this expects (lua/, ftdetect/, ftplugin/, syntax/) is kept in sync
-- with clients/vim by clients/nvim/sync-runtime.py. The rock name comes
-- from the workflow (epher); the version comes from the pushed tag
-- (v0.5.57 becomes rock 0.5.57-1).

local git_ref = 'e23866f1190eb1120221187880ba153cd5975dc5'
local modrev = '0.9.11'
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
  url = repo_url .. '/releases/download/v' .. modrev .. '/epher-nvim-source-v' .. modrev .. '.zip',
  dir = '.',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
