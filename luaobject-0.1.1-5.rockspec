package = "luaobject"
version = "0.1.1-5"
source = {
   url = "https://github.com/cooperong/luaobject/archive/0.1.1.tar.gz",
   dir = "luaobject-0.1.1"
}
description = {
   summary = "A lua package for object-oriented programming",
   detailed = [[
A lua package for object-oriented programming, supports the following properties:
1.Class includes read-only elements and read-write elements,read-only elements can not be overridden(include sub class),read-write elements can be overridden(include sub class).
2.Class supports multiple inheritance,A class can also inherit class1 and class2,access the parent class through the super[index],the read-write elements of parent class can be overridden from  sub class.<br>
3.Support inheritance chain(A inherit B,B inherit C,C inherit D,and so on).
4.Support objects batch release,if object1,object2,object3 inherit Class1,release Class1,will release object1,object2,object3 automatic.
5.Support single object element definition.
6.Support bind event, event can be inherited.
7.Support multicast event handler,handler can have a different number of parameters(the first parameter is always sender).
8.Not support cross inheritance.
]],
   homepage = "https://github.com/cooperong/luaobject",
   license = "MIT"
}
dependencies = {
    "lua >= 5.1"
}
build = {
   type = "builtin",
   modules = {
      class = "class.lua",
      event = "event.lua",
      object = "object.lua"
   }
}
