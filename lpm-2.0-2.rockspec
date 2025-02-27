---@diagnostic disable: lowercase-global
package = 'lpm'
version = '2.0-2'
rockspec_format = '3.0'
source = {
    url = 'https://github.com/mzaini30/lpm/archive/v2.0-2.tar.gz',
    dir = 'lpm-2.0-2'
}
description = {
    summary = "Package management like NPM in Node.js, but for Lua.",
    homepage = "https://github.com/mzaini30/lpm",
    license = "MIT",
    detailed = [[
        INIT (optional)

        lpm init

        INSTALL FROM ROCKSPEC

        lpm i

        INSTALL DEPENDENCIES

        lpm i package1 package2 package3

        MOTIVATION BEHIND CREATING THIS PACKAGE

        When we install Lua packages using Luarocks, we don't know which packages have already been installed since there's no equivalent of a package.json like in Node.js.

        That's why I created this, so that when we install Lua packages, we can easily track which ones are installed. Additionally, we can directly upload to Luarocks, similar to how in Node.js, we can upload to NPM using just package.json.
    ]],
}
build = {
    type = 'builtin',
    install = {
        bin = {
            ['lpm'] = 'lpm.lua'
        }
    }
}
-- dependencies must be at the bottom
dependencies = {
}
