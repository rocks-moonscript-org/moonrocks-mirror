---prompt-style
-- luacheck: ignore 111
-- LuaFormatter off

-- LuaFormatter on
---@diagnostic disable: lowercase-global
package = "prompt-style"
version = "0.0.1-0"
source = {
    url = "https://github.com/Freed-Wu/prompt-style.lua",
}
description = {
    summary = "powerlevel10k style for luaprompt",
    detailed = [[powerlevel10k style for luaprompt]],
    homepage = "https://github.com/Freed-Wu/prompt-style",
    license = "GPL3 <https://www.gnu.org/licenses>"
}
dependencies = {
    "lua >= 5.1",
    "ansicolors",
    "luafilesystem"
}
build = {
    type = "builtin",
    modules = {["prompt-style"] = "prompt-style.lua"}
}
