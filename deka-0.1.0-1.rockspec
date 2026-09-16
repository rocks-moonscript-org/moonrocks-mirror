-- deka (rock) / deka.nvim (plugin): Neovim plugin for DekaScript (LSP via `dsc lsp`, stdio).
--
-- Installed via luarocks or any plugin manager; zero required configuration.
-- See https://github.com/dekaruntime/editors for the full documentation.

package = 'deka'
version = '0.1.0-1'

source = {
  url = 'git+https://github.com/dekaruntime/editors.git',
  tag = 'v0.1.0',
  -- publish-nvim.yml adds `tag = 'vX.Y.Z'` when it generates the versioned
  -- rockspec, so a release rock is packed from its tag, not the default branch.
}

description = {
  summary = 'DekaScript language support for Neovim (dsc lsp)',
  detailed = [[
    Attaches the DekaScript language server (`dsc lsp`, stdio) to .ds and .dsx
    buffers. The dsc binary is resolved with a managed search order:
    explicit override > previously downloaded copy > dsc on PATH >
    version-pinned, checksum-verified download. Highlighting is provided by
    the tree-sitter parser (dekaruntime/tree-sitter-deka) via nvim-treesitter.
  ]],
  homepage = 'https://github.com/dekaruntime/editors',
  license = 'Apache-2.0',
}

dependencies = {}

build = {
  type = 'builtin',
  -- Paths are relative to the source checkout, which luarocks clones from the
  -- repo ROOT, not from this rockspec's directory: the plugin lives in nvim/.
  -- The plugin/ auto-setup entrypoint is loaded by plugin managers directly;
  -- luarocks installs the require()-able modules.
  modules = {
    ['deka'] = 'nvim/lua/deka/init.lua',
    ['deka.discovery'] = 'nvim/lua/deka/discovery.lua',
  },
}
