package = "benchmarker"
version = "0.0.1-0"

source = {
   url = "git://github.com/moznion/lua-benchmarker.git",
   branch = "v0.0.1-0",
}

description = {
   summary =  "A micro benchmarker for lua",
   homepage = "https://github.com/moznion/lua-benchmarker",
   license = "Artistic-1.0",
   maintainer = "moznion <moznion@gmail.com>",
}

dependencies = {
   "lua >= 5.1, <= 5.4",
   "cputime >= 0.2.0-0",
   "hires-time >= 0.1.0-0",
}

build = {
   type = "builtin",
   modules = {
       ["benchmarker"] = "src/benchmarker.lua",
       ["benchmarker.result"] = "src/result.lua",
       ["benchmarker.score"] = "src/score.lua",
       ["benchmarker.scenario_result"] = "src/scenario_result.lua",
   },
}

