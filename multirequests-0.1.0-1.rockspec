local v = "0.1.0"

package = "multirequests"
version = v .. "-1"

source = {
  url = "https://github.com/moteus/lua-MultiRequests/archive/v" .. v .. ".zip",
  dir = "lua-MultiRequests-" .. v,
}

description = {
  summary    = "Make multiple requests from different coroutines in parallel",
  homepage   = "https://github.com/moteus/lua-MultiRequests",
  license    = "MIT/X11",
  maintainer = "Alexey Melnichuk",
  detailed   = [[
  ]],
}

dependencies = {
  "lua >= 5.1, < 5.4",
  "lua-curl >= 0.3.0",
}

build = {
  copy_directories = {'examples'},

  type = "builtin",

  modules = {
    [ 'MultiRequests' ] = 'src/MultiRequests.lua',
  };
}
