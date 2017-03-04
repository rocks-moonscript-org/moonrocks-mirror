
package = "LuaBibTex"
version = "0.1.0-1"
source =
{
    url = "git://github.com/echiesse/luabibtex",
    tag = "v_0.1.0"
}

description =
{
    summary = "Lua implementation of BibTeX.",
    detailed = [[]],
    homepage = "https://github.com/echiesse/luabibtex",
    license = "MIT",
}

dependencies =
{
    "lua >= 5.1",
    "luno >= 20141204",
    "luafilesystem >= 1.5.0",
}

build =
{
    type = "builtin",
    modules =
    {
        ["luaBibTex"] = "luaBibTex.lua",
        ["luaBibTex.bibParser"]        = "bibParser.lua",
        ["luaBibTex.auxParser"]        = "auxParser.lua",
        ["luaBibTex.bibFunctions"]     = "bibFunctions.lua",
        ["luaBibTex.bblGenerator"]     = "bblGenerator.lua",
        ["luaBibTex.fileSystemHelper"] = "fileSystemHelper.lua",
        ["luaBibTex.logger"]           = "logger.lua",
        ["luaBibTex.nameObject"]       = "nameObject.lua",
        --["luaBibTex.stringBuffer"]     = "stringBuffer.lua",
    },

    install =
    {
        lua =
        {
            ["luaBibTex.plain"] = "plain.lbst",
        },

        bin =
        {
            ["luaBibTex.bat"]   = "scripts/luaBibTex.bat",
            ["luaBibTex"]  = "scripts/luaBibTex.sh",
        },
    },
}
