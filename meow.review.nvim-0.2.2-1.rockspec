-- Development rockspec and release template (ADR-0010).
--
-- Loaded directly, `is_release` is false and this is the scm rockspec.
-- luarocks-tag-release fills in the `$` placeholders on a pushed tag, which
-- makes `is_release` true. Placeholders appear only in the locals the release
-- branch consumes, because anywhere else their literal text would reach the
-- scm rock.

local is_release = "true" == "true"
local modrev = "0.2.2"
local specrev = "1"
local git_ref = "v0.2.2"

local repo = "https://github.com/meowshed/meow.review.nvim"

rockspec_format = "3.0"
package = "meow.review.nvim"

if is_release then
    version = modrev .. "-" .. specrev
    source = {
        url = repo .. "/archive/" .. git_ref .. ".zip",
        -- GitHub names the archive directory without the tag's `v`.
        dir = "meow.review.nvim-" .. modrev,
    }
else
    version = "scm-1"
    source = {
        url = "git+" .. repo .. ".git",
    }
end

description = {
    summary = "A Neovim plugin for reviewing AI-generated code with structured annotations.",
    detailed = [[
meow.review.nvim is a Neovim plugin designed to help developers review AI-generated code.
It provides inline code annotations (ISSUE, SUGGESTION, NOTE) that are persisted to
.cache/meow-review/annotations.json and can be exported to Markdown for consumption by AI agents.
    ]],
    homepage = repo,
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

-- `plugin/` holds the :MeowReview command and the <Plug> mappings, which
-- rocks.nvim loads from the rock's runtime directories (REQ-0600).
build = {
    type = "builtin",
    copy_directories = { "plugin", "doc" },
}
