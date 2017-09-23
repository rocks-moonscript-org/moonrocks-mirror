package = "lua-lsw"
version = "0.1.0-0"

description = {
  summary = "leaseweb api bindings",
  homepage = "https://github.com/fnordpipe/lua-lsw",
  license = "MIT",
}

source = {
  url = "git+https://github.com/fnordpipe/lua-lsw.git",
  tag = "v0.1.0",
}

dependencies = {
  "luasec",
}

build = {
  type = "builtin",
  modules = {
    ['leaseweb.bareMetalDhcp'] = "src/leaseweb/bareMetalDhcp.lua",
    ['leaseweb.bareMetalInstallation'] = "src/leaseweb/bareMetalInstallation.lua",
    ['leaseweb.bareMetalIp'] = "src/leaseweb/bareMetalIp.lua",
    ['leaseweb.bareMetal'] = "src/leaseweb/bareMetal.lua",
    ['leaseweb.bareMetalNetworkUsage'] = "src/leaseweb/bareMetalNetworkUsage.lua",
    ['leaseweb.bareMetalPassword'] = "src/leaseweb/bareMetalPassword.lua",
    ['leaseweb.bareMetalPower'] = "src/leaseweb/bareMetalPower.lua",
    ['leaseweb.bareMetals'] = "src/leaseweb/bareMetals.lua",
    ['leaseweb.bareMetalSwitch'] = "src/leaseweb/bareMetalSwitch.lua",
    ['leaseweb.operatingSystems'] = "src/leaseweb/operatingSystems.lua",
    ['leaseweb.rescueImages'] = "src/leaseweb/rescueImages.lua",
    ['leaseweb.rest'] = "src/leaseweb/rest.lua",
  },
}
