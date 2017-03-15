
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
        ["luaBibTex"] = "src/luaBibTex.lua",
        ["luaBibTex.bibParser"]        = "src/bibParser.lua",
        ["luaBibTex.auxParser"]        = "src/auxParser.lua",
        ["luaBibTex.bibFunctions"]     = "src/bibFunctions.lua",
        ["luaBibTex.bblGenerator"]     = "src/bblGenerator.lua",
        ["luaBibTex.fileSystemHelper"] = "src/fileSystemHelper.lua",
        ["luaBibTex.logger"]           = "src/logger.lua",
        ["luaBibTex.nameObject"]       = "src/nameObject.lua",
        --["luaBibTex.stringBuffer"]     = "src/stringBuffer.lua",
    },

    install =
    {
        lua =
        {
            ["luaBibTex.plain"] = "src/plain.lbst",
        },

        bin =
        {
            ["luaBibTex.bat"]   = "src/scripts/luaBibTex.bat",
            ["luaBibTex"]  = "src/scripts/luaBibTex.sh",
        },
    },
}
