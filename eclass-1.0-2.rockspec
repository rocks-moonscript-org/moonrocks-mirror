package = "eclass"
version = "1.0-2"
source = {
    url = "git://github.com/liaozhaoyan/eclass"
}
description = {
    summary = "eclass is a simple object-oriented implementation of Lua",
    license = "MIT",
    homepage = "https://github.com/liaozhaoyan/eclass",
    detailed = [[
eclass is a simple object-oriented implementation of Lua

# Example
  base class

```lua
require("eclass")   -- declare class function

local Cbase = class("base") -- declare a class

function Cbase:_init_(name) --  constructor
    self.name = name  -- class member value.
end

function Cbase:hello()  -- class function
    return self.name
end

function Cbase:_del_()  -- destructor
    print("base del ... " .. self.name)
end

return Cbase
```

class one


```lua
require("eclass")
local Cbase = require("base")

Cone = class("one", Cbase)  -- inherit

function Cone:_init_(name)
    Cbase._init_(self, name)  -- supper call
end

function Cone:say()
    print("one start")
    print("one say " .. self.name)
    print("one end\n")
end

return Cone

```

class two

```
require("eclass")
local Cone = require("one")

CTwo = class("two", Cone)

function CTwo:_init_(name)
    Cone._init_(self, name)
end

function CTwo:say()
    print("two start")
    print("two say " .. self.name)
    print("call supper method.")
    Cone.say(self)
    print("two end\n")
end

return CTwo
```

class three

```lua
require("eclass")
local Cone = require("one")

CThree = class("three", Cone)

function CThree:_init_(name)
    Cone._init_(self, name)
    self._child = Cone.new("child") -- Recursive declaration.
end


function CThree:say()
    print("three start.")
    print("three say " .. self.name)
    print("child say.")
    self._child:say()
    print("three end.")
end

return CThree
```

test fucntion

```lua
package.path = package.path .. ";../src/?.lua;"

require("eclass")

local Cone = require("one")
local Ctwo = require("two")
local CThree = require("three")

local one = Cone.new("one")
local two = Ctwo.new("two")
local three = CThree.new("three")

print(one:hello())
assert(one:hello() == "one")
assert(two:hello() == "two")
assert(three:hello() == "three")

one:say()
two:say()
three:say()

one = nil
two:say()
```

]],
}
dependencies = {
    "lua >= 5.1",
}
build = {
    type = "builtin",
    modules = {
        eclass = 'eclass.lua',
    },
}