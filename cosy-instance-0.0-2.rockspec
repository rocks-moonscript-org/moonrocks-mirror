package = "cosy-instance"
version = "0.0-2"
source  = {
  url    = "git+https://github.com/cosyverif/instance.git",
  branch = "master",
}

description = {
  summary    = "CosyVerif: instance",
  detailed   = [[
    Instance of the CosyVerif platform.
  ]],
  homepage   = "http://www.cosyverif.org/",
  license    = "MIT/X11",
  maintainer = "Alban Linard <alban@linard.fr>",
}

dependencies = {
  "lua >= 5.1",
  "etlua",
  "hashids", -- FIXME: remove rockspec, fix wercker.yml and Dockerfile
  "lua-cjson",
  "luasec",
  "luasocket",
}

local sources = {
  "src/cosy/instance/http.lua",
  "src/cosy/instance/init.lua",
}
local modules = {}
for i = 1, #sources do
  local source = sources [i]
  local module = source:gsub ("%.lua$", ""):gsub ("^src/", ""):gsub ("/", ".")
  if module:match "%.init$" then
    module = module:sub (1, #module-5)
  end
  modules [module] = source
end

build = {
  type    = "builtin",
  modules = modules,
  install = {
    bin = {
      ["cosy-instance"] = "src/cosy/instance/bin.lua",
    },
  },
}
