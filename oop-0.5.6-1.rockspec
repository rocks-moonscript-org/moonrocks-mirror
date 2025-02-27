---@diagnostic disable: lowercase-global
package = "oop"
version = "0.5.6-1"

source = {
  url = "git+https://gitlab.com/lua_rocks/oop.git",
  tag = "v0.5.6"
}

description = {
  summary = "Oop for Lua",
  detailed = [[
    Lua Library for object-oriented programming.
    Created with a Goal: to provide a simple and clear tool for convenient
    development of readable object-oriented code based on classes and objects.
    Without having to repeat pieces of code and think about the specific features
    of OOP implementation in Lua.
    Features:
    All classes inherit the base class Object.
    Separate syntax for creating an instances, classes, interfaces, and
    method signatures for define interfaces and abstract classes.
    Single inheritance, but with a "defualt methods" in interfaces.
    The intuitive syntax for class definition with "extends" and "implements"
    Automatically checks whether a class actually implements all declared interfaces
    Automatically called constructors on creating the instance of class
    with simple and clear overriding in inherited classes, provided the self.super
    to call constructor of superclass. And support for chaining calls to superclass
    constructors via self.super()
  ]],
  homepage = "https://gitlab.com/lua_rocks/oop",
  license = "MIT"
}

dependencies = {
  "lua >= 5.1"
  -- optional: "dprint"
}

build = {
  type = "builtin",
  modules = {
    ["oop.base"] = "src/oop/base.lua",
    ["oop.class"] = "src/oop/class.lua",
    ["oop.Object"] = "src/oop/Object.lua",
    ["oop.interface"] = "src/oop/interface.lua",
    ["oop.MethodSignature"] = "src/oop/MethodSignature.lua",
  },

  copy_directories = {
    'doc',
    'examples',
  }
}
