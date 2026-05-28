rockspec_format = "3.0"
package = "seedance-3-org"
version = "0.1.0-1"
source = {
  -- The source archive will be embedded in the .src.rock when uploading.
  -- NOTE: this URL is replaced to an absolute local path at pack/upload time.
  url = "/Users/huashisan/Desktop/外链/外链/luarocks/seedance_3_org/seedance-3-org-0.1.0.tar.gz",
  dir = "seedance-3-org-0.1.0"
}
description = {
  summary = "Seedance 3.0 official website backlink rock.",
  detailed = "Seedance 3.0 official website backlink rock.",
  homepage = "https://www.seedance-3.org",
  license = "MIT"
}
build = {
  type = "builtin",
  modules = {
    ["seedance_3_org"] = "src/seedance_3_org.lua"
  }
}
