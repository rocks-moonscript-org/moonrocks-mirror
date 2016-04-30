package = "dataframe"
 version = "0.1-1"
 source = {
    url = "git://github.com/chuanwen/dataframe-lua"
 }
 description = {
    summary = "A dataframe class for Lua/Torch",
    detailed = [[
       Similar to data.frame in R, "dataframe"
       in Lua can read/write csv or tsv file, process
       data with easy.
    ]],
    homepage = "https://github.com/chuanwen/dataframe-lua",
    license = "MIT",
    maintainer = "Chuanwen Chen"
 }
 dependencies = {
    "lua ~> 5.1",
    "torch >= 7.0"
 }
 build = {
    type = "builtin",
    modules = {
        dataframe = "dataframe.lua"
    }
 }
