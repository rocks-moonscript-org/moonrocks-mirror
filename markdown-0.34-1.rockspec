local package_name = "Markdown"
local package_version = "0.34"
local rockspec_revision = "1"
local github_account_name = "lunarmodules"
local github_repo_name = "markdown"

package = package_name
version = package_version .. "-" .. rockspec_revision

source = {
   url = "git+https://github.com/" .. github_account_name .. "/" .. github_repo_name .. ".git",
   branch = (package_version == "scm") and "master" or nil,
   tag = (package_version ~= "scm") and package_version or nil,
}

description = {
   summary = "Markdown text-to-html markup system.",
   detailed = "A pure-lua implementation of the Markdown text-to-html markup system.",
   license = "MIT/X11",
   homepage = "https://github.com/" .. github_account_name .. "/" .. github_repo_name
}
dependencies = {
   "lua >= 5.1, <= 5.5"
}
build = {
   type = "builtin",
   modules = {
      markdown = "markdown.lua"
   },
   copy_directories = {}
}
