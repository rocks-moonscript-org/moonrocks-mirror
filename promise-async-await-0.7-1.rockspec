package = "promise-async-await"
version = "0.7-1"
source = {
   url = "git+https://github.com/javalikescript/luajls.git",
   tag = "0.7.1"
}
description = {
   summary = "an implementation of Promises/A+ in Lua with async/await support",
   detailed = [[
      To synchronize the program execution when dealing with asynchronous operations.
      This allows to simplify the writing and reading of asynchronous operations compared to callback function.
      The async and await functions allows asynchronous/non-blocking functions to be written in a traditional synchronous/blocking style.
      You also benefits of the whole Promise API, such as executing multiple parallel promises.
   ]],
   homepage = "https://github.com/javalikescript/luajls",
   license = "MIT"
}
dependencies = {
   "lua >= 5.4",
   "class",
}
build = {
   type = "builtin",
   modules = {
      ["jls.lang.Promise"] = "jls/lang/Promise.lua",
   }
}
