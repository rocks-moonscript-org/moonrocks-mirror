local package_name = "lua-bz2"
local package_version = "0.2.3"
local rockspec_revision = "1"
local github_account_name = "lunarmodules"
local github_repo_name = "lua-bz2"

package = package_name
version = package_version .. "-" .. rockspec_revision

source = {
   url = "git+https://github.com/" .. github_account_name .. "/" .. github_repo_name .. ".git",
   branch = (package_version == "dev") and "master" or nil,
   tag = (package_version ~= "dev") and package_version or nil,
}

description = {
   summary = "A Lua binding to Julian Seward's libbzip2",
   detailed = [[
      Support for reading and writing .bz2 files
      and handling streams compressed in bzip2 format.
   ]],
   homepage = "https://github.com/" .. github_account_name .. "/" .. github_repo_name,
   license = "ISC"
}
external_dependencies = {
   BZ2 = {
      library = "bz2"
   }
}
build = {
   type = "builtin",
   modules = {
      bz2 = {
         incdirs = {
            "$(BZ2_INCDIR)"
         },
         libdirs = {
            "$(BZ2_LIBDIR)"
         },
         libraries = {
            "bz2"
         },
         defines = {
            "COMPAT53_PREFIX=compat53",
         },
         sources = {
            "lbz.c",
            "lbz2_common.c",
            "lbz2_file_reader.c",
            "lbz2_file_writer.c",
            "lbz2_stream.c",
            "compat-5.3.c",
         }
      },
      ["bz2.ltn12"] = "bz2/ltn12.lua",
   }
}
