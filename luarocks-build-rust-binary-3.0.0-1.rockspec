local git_ref = 'v3.0.0'
local modrev = '3.0.0'
local specrev = '1'

local repo_url = 'https://github.com/vhyrro/luarocks-build-rust-binary'

rockspec_format = '3.0'
package = 'luarocks-build-rust-binary'
version = modrev ..'-'.. specrev

description = {
  summary = 'A luarocks build step allowing rocks to bundle Rust binaries with the library.',
  detailed = [[
A module for compiling any arbitrary binary from crates.io by using cargo install under the hood. The compiled binary is placed into the appropriate location under a bin/ subdirectory.]],
  labels = { 'rust' } ,
  homepage = 'https://github.com/vhyrro/luarocks-build-rust-binary',
  license = 'MIT'
}

dependencies = { 'lua >= 5.1' } 

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'luarocks-build-rust-binary-' .. '3.0.0',
}

build = {
  type = 'builtin',
  copy_directories = { },
}
