package = 'lrexrepl'

version = '0.2.1-1'
local versionNumber = version:gsub("^(.*)-.-$", "%1")

source = {
  url = "https://github.com/osch/lrexrepl/archive/v"..versionNumber..".zip",
  dir = "lrexrepl-"..versionNumber,
}

description = {
    summary = 'Commandline tool: Search and replace in Files',
    detailed = [[
    ]],
    license = 'MIT/X11',
    homepage = "https://github.com/osch/lrexrepl",
}

dependencies = {
    "lrexlib-pcre",
    "luafilesystem"
}

build = {
    type = 'none',
    install = {
        bin = {'lrexrepl' }
    }
}
