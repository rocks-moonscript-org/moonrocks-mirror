package = "jsmin"
version = "0.0.1-2"
source = {
   url = "git+https://git.sr.ht/~ryanford/jsmin-lua"
}
description = {
   summary = "JS source minifier",
   detailed = [=[
### jsmin.lua

Lua port of Crockford's JSMin.c

#### Install:

```bash
luarocks install jsmin
```

#### Usage:

From CLI:
```bash
$ cat <<EOF > input.js
(function() {
  console.log("Hello, World!");
  // removes comments
  return 0;
})()
EOF
$ jsmin <input.js >output.js
$
$ cat output.js
(function(){console.log("Hello, World!");return 0;})()
```

From Lua:
```lua
local jsmin = require("jsmin")
local js_str = [[
(function() {
  console.log("Hello, World!");
  // removes comments
  return 0;
})()]]

print(jsmin(js_str))
-- (function(){console.log("Hello, World!");return 0;})()
```]=],
   homepage = "https://git.sr.ht/~ryanford/jsmin-lua",
   license = "see source"
}
build = {
   type = "builtin",
   modules = { jsmin = "jsmin/init.lua" },
   install = {
      bin = {  jsmin = "bin/jsmin.lua" }
   }
}
