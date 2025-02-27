local git_ref = 'v1.0.3'
local modrev = '1.0.3'
local specrev = '1'

local repo_url = 'https://github.com/MisanthropicBit/decipher.nvim'

rockspec_format = '3.0'
package = 'decipher.nvim'
version = modrev ..'-'.. specrev

description = {
  summary = 'A neovim plugin for encoding and decoding text',
  detailed = '',
  labels = { },
  homepage = 'https://github.com/MisanthropicBit/decipher.nvim',
  license = 'BSD-3-Clause'
}

dependencies = { 'lua >= 5.1' } 

test_dependencies = { }

source = {
  url = repo_url .. '/archive/' .. git_ref .. '.zip',
  dir = 'decipher.nvim-' .. '1.0.3',
}

if modrev == 'scm' or modrev == 'dev' then
  source = {
    url = repo_url:gsub('https', 'git')
  }
end

build = {
  type = 'builtin',
  copy_directories = { 'doc' } ,
}
