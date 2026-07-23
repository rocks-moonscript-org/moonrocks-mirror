package = "makinda-icons-nvim"
version = "1.2.1-1"

source = {
    url    = "git+https://github.com/makinda-jackson/makinda-icons.git",
    tag    = "nvim/v1.2.1",
}

description = {
    summary  = "Makinda file icons for Neovim (nvim-web-devicons / mini.icons overlay)",
    detailed = [[
        File-icon overlay for nvim-web-devicons and mini.icons using the
        same 84-icon manifest as the Makinda Icons VS Code extension and
        JetBrains plugin.  Maps each Makinda file type to the closest Nerd
        Font codepoint plus a Makinda palette color.  Supports dark and light
        terminal themes via per-icon light_color overrides.
    ]],
    homepage = "https://github.com/makinda-jackson/makinda-icons",
    license  = "MIT",
}

dependencies = {
    "lua >= 5.1",
}

build = {
    type    = "builtin",
    modules = {
        ["makinda-icons"]              = "packages/nvim/lua/makinda-icons/init.lua",
        ["makinda-icons.icons"]        = "packages/nvim/lua/makinda-icons/icons.lua",
        ["makinda-icons.mini"]         = "packages/nvim/lua/makinda-icons/mini.lua",
    },
}
