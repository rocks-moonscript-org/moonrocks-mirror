package = "luaobject"
version = "0.1.1-4"
source = {
   url = "https://github.com/cooperong/luaobject/archive/0.1.1.tar.gz",
   dir = "luaobject-0.1.1"
}
description = {
   summary = "a lua object oriented package",
   detailed = [[
###Example
####example 1
Define a Person class and create the object, print the variable id, and then release the object
#####methon 1
```lua
local Person=Class:create()    --declara class
Person.inherit={Object}     --inherit Object
Person.readonly={id=1,tostring=function(s) print(s) end}      read-only element,can not be override,can be inherited
Person.override={name="person",getvalue=function(v) return v end}   --can be override,can be inherited
person=Person:new()
print(person.id)
person:release()
```
#####methon2
```lua
local Person=Class:create({inherit={Object},readonly={id=1},override={name="person"}})
person=Person:new()
print(person.id)
person:release()
```
####example 2
Release all objects that be generated from Person
```lua
local Person=Class:create()
Person.inherit={Object}
Person.readonly={id=1,tostring=function(s) print(s) end}
Person.override={name="person",getvalue=function(v) return v end}
person1=Person:new()
person2=Person:new()
person3=Person:new()
Person:abandon()
```
####example 3
Access parent class elements
```lua
local Person=Class:create()
Person.inherit={Object}
Person.readonly={id=1,tostring=function(s) print(s) end}
Person.override={name="person",getvalue=function(v) return v end}
person=Person:new()
print(person.super.id) 
```
####example 4
Access to the parent element by index
```lua
local Person=Class:create()
Person.inherit={Object1,Object2}
Person.readonly={id=1,tostring=function(s) print(s) end}
Person.override={name="person",getvalue=function(v) return v end}
person=Person:new()
person.super[2].tostring()
```
####example 5
Define the event, binding event handler, and trigger events
```lua
local Person=Class:create()
local Event=require "event"
print_event=Event:new()
Person.event={print_event}
function p(sender,args) 
    print(args) 
end
person=Person:new()
person.event(print_event):bind(p)
person.event(print_event):fire(2)
```
####example 6
Define the object event, binding event handler, and trigger events
```lua
local Person=Class:create()
local Event=require "event"
print_event=Event:new()
function p(sender,args) --the first parameter is always sender
    print(args) 
end
person=Person:new()
person.event:register(print_event)
person.event(print_event):bind(p)
person.event(print_event):fire(2)
```
####example 7
multicast event handler
```lua
local Person=Class:create()
local Event=require "event"
print_event=Event:new()
function p1(sender,args1) 
    print(args2) 
end
function p2(sender,args1,args2) 
    print(args1,args2) 
end
person=Person:new()
person.event:register(print_event)
person.event(print_event):bind(p1)
person.event(print_event):bind(p2)
person.event(print_event):fire(2)
person.event(print_event):fire(1,2)
```
####example 8
event can be inherited
```lua
local Class=require "class"
local Event=require "event"
local Person=Class:create()
print_event=Event:new()
Person.event={print_event}
local Man=Class:create({inherit={Person}})	--man inherit Person,so inherit print_event
function p(sender,args) 
    print(sender,args) 
end
person=Person:new()
man=Man:new();
person.event(print_event):bind(p)
man.event(print_event):bind(p)
person.event(print_event):fire(1)
man.event(print_event):fire(2)
```
out:<br>
table: 0x4037a060	1	result of the person<br>
table: 0x4036cd40	2	result of the man<br>
You can see the two event sender points to a different event object.<br>]],
   homepage = "https://github.com/cooperong/luaobject",
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      class = "class.lua",
      event = "event.lua",
      object = "object.lua"
   }
}
