local rockspec_revision = "1"
local package_version = "0.1.0"
local dev_branch = "main"

local is_dev_package = package_version == "dev" or
                       package_version == "scm" or
                       package_version == "cvs" or
                       package_version == "git" or
                       package_version == "svn" or
                       package_version == "hg"

package = "lua-pcg"
version = package_version .. "-" .. rockspec_revision

source = {
   url = [=[git+https://github.com/luau-project/lua-pcg.git]=],
   branch = is_dev_package and dev_branch or nil,
   tag = (not is_dev_package) and ("v" .. package_version) or nil
}

description = {
   homepage = [=[https://github.com/luau-project/lua-pcg]=],
   license = "MIT",
   summary = [[PCG random number generators for Lua]],
   detailed = [=[lua-pcg implements methods of the PCG algorithms for Lua. PCG is a family of simple fast space-efficient statistically good algorithms designed in 2014 by Dr. M. E. O'Neill for random number generation.

Visit the repository for more information.]=]
}

dependencies = {
   "lua >= 5.1"
}

build = {
   type = "builtin",
   modules = {
      ["lua-pcg"] = {
         sources = { "src/lua-pcg.c" },
         defines = { "NDEBUG", "_NDEBUG", "LUA_PCG_BUILD_SHARED" },
         incdirs = { "src" }
      }
   }
}