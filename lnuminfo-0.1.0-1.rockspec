local rockspec_revision = "1"
local package_version = "0.1.0"
local dev_branch = "main"

local is_dev_package = package_version == "dev" or
                       package_version == "scm" or
                       package_version == "cvs" or
                       package_version == "git" or
                       package_version == "svn" or
                       package_version == "hg"

package = "lnuminfo"
version = package_version .. "-" .. rockspec_revision

source = {
    url = [=[git+https://github.com/luau-project/lnuminfo.git]=],
    branch = is_dev_package and dev_branch or nil,
    tag = (not is_dev_package) and ("v" .. package_version) or nil
}

description = {
    homepage = [=[https://github.com/luau-project/lnuminfo]=],
    summary = [[Detect characteristics of Lua numbers.]],
    detailed = [=[
Detect characteristics of floating-point numbers in pure Lua.

Visit the repository for more information.]=],
    license = "MIT"
}

dependencies = {
    "lua >= 5.1"
}

build = {
    type = "builtin",
    modules = {
        ["lnuminfo"] = "lnuminfo.lua"
    }
}
