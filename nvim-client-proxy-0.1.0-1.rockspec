---@diagnostic disable: lowercase-global

local rock_version = '0.1.0'
local git_tag = 'v' .. rock_version

package = "nvim-client-proxy"
version = rock_version .. '-1'
source = {
  url = 'https://github.com/hjdivad/nvim-client-proxy/releases/download/' .. git_tag .. '/nvim-client-proxy-' .. rock_version .. '.tar.gz',
}
description = {
  homepage = "https://github.com/hjdivad/nvim-client-proxy/",
  license = "MIT"
}
dependencies = {
  'lua >= 5.1',
  'nvim-client >= 0.2.3-1',
}
build = {
  type = "builtin",
  modules = {
    nvim_client_proxy = "src/nvim_client_proxy.lua",
    ['nvim_client_proxy._stringify'] = 'src/nvim_client_proxy/_stringify.lua'
  }
}
