package = "TPatterns"
version = "1.0-1"
source = {
    url = "git://github.com/Thanakrit-Anutrakulchai/TPatterns-lua"
}
description = {
    summary = "Pattern matching for tables",
    detailed = [[
      A module that brings pattern matching (in the style of functional programming) to Lua's tables. 
      This relies heavily on (one-sided) unification. It is deeply inspired by the ideas of 
      miniKanren and microKanren (http://minikanren.org/ & http://webyrd.net/scheme-2013/papers/HemannMuKanren2013.pdf).
   ]],
    homepage = "https://github.com/Thanakrit-Anutrakulchai/TPatterns-lua",
    license = "MIT"
}
dependencies = {
    "lua >= 5.1"
}
build = {
    type = "builtin",
    modules = {
        tpatterns = 'TPatterns.lua'
    }
}
