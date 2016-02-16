package = "LuaMine" 
version = "1.0-1"
 source = {
    url = "git://github.com/timm/luamine.git"  
 }
 description = {
    summary = "Tools for combining data mining and optimization.",
    maintainer="tim.menzies@gmail.com",
    detailed = [[
      LuaMine documents common data mining   patterns. These tools
      learn, from examples, a approximation to some function

              y = Fun(x)

      where y can be a single or multiple goals. The general tactic is
      to approximate complex functions via a few
      dimensions, divided into a small number of ranges.
    ]],
    homepage = "https://github.com/timm/luamine/blob/master/README.md",  
    license = "Unlicense"  
 }
 dependencies = {
    "lua ~> 5.1" 
 }
 build = {
     type       = "builtin",
     modules    = {
      utils2    = "aaa.lua",
      tests0    = "aaaok.lua",
      columns   = "cols.lua",
      tests1    = "colsok.lua",
      discretization= "divs.lua",
      tests2    = "divsok.lua",
      functions = "fun.lua",
      tests3    = "funok.lua",
      csvReader = "nsv.lua",
      tests4    = "nsvok.lua"
      } ,
      copy_directories = {"data"}
 }
