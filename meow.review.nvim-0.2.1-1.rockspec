rockspec_format = "3.0"
package = "meow.review.nvim"
version = "0.2.1-1"

source = {
    url = "git+https://github.com/retran/meow.review.nvim.git",
    tag = "v0.2.1",
}

description = {
    summary = "A Neovim plugin for reviewing AI-generated code with structured annotations.",
    detailed = [[
meow.review.nvim is a Neovim plugin designed to help developers review AI-generated code.
It provides inline code annotations (ISSUE, SUGGESTION, NOTE) that are persisted to
.cache/meow-review/annotations.json and can be exported to Markdown for consumption by AI agents.

Features:
- Annotate code ranges with typed comments (ISSUE, SUGGESTION, NOTE)
- Treesitter-aware context capture (function/class name)
- Git hunk detection via gitsigns or vim.diff (vimdiff)
- JSON persistence per project (git root)
- Markdown and JSON export for AI agent consumption
- Sign column + extmark-based position tracking with stale detection
- Resolved annotation state (excluded from export by default)
- Pluggable exporter and formatter registry
- Auto-registered avante.nvim and codecompanion.nvim exporters
- :checkhealth meow.review support
    ]],
    homepage = "https://github.com/retran/meow.review.nvim",
    license = "MIT",
}

dependencies = {
    "lua >= 5.1",
    "nui.nvim",
}

test_dependencies = {
    "busted",
    "nlua",
}

build = {
    type = "builtin",
}
