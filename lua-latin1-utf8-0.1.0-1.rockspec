local rockspec_revision = "1"
local package_version = "0.1.0"
local dev_branch = "main"

local is_dev_package = package_version == "dev" or
                       package_version == "scm" or
                       package_version == "cvs" or
                       package_version == "git" or
                       package_version == "svn" or
                       package_version == "hg"

package = "lua-latin1-utf8"
version = package_version .. "-" .. rockspec_revision

source = {
    url = [=[git+https://github.com/luau-project/lua-latin1-utf8.git]=],
    branch = is_dev_package and dev_branch or nil,
    tag = (not is_dev_package) and ("v" .. package_version) or nil
}

description = {
    homepage = [=[https://github.com/luau-project/lua-latin1-utf8]=],
    summary = "Convert strings from Latin 1 to UTF-8 in pure Lua",
    detailed = [[Convert strings from ISO-8859-1 (Latin 1) to UTF-8 in pure Lua.

Visit the repository for detailed info.]],
    license = "MIT"
}
dependencies = {
   "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        ["lua-latin1-utf8"] = "src/lua-latin1-utf8.lua"
    }
}
