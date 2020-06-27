package = "rkeys"
version = "2.1.1-1"
source = {
   url = "git+https://github.com/DonHomka/rkeys.git",
   tag = "v2.1.1"
}
description = {
   summary = "### Начало работы ```lua local vkeys = require 'vkeys' -- Библиотека с кодами клавиш в удобном формате local rkeys = require 'rkeys' -- Подключаем RKeys ``` ### Регистрация клавиш ```lua -- Регистрируем сочетание клавиш Left Shift + W.",
   detailed = [[
### Начало работы
```lua
local vkeys = require 'vkeys' -- Библиотека с кодами клавиш в удобном формате
local rkeys = require 'rkeys' -- Подключаем RKeys
```
### Регистрация клавиш
```lua
-- Регистрируем сочетание клавиш Left Shift + W. Указываем тип активации клавиши как 1. Тертьим аргументом задаем блокировку ввода при нажатии последней клавиши комбинации
local newid = rkeys.registerHotKey({ vkeys.VK_LSHIFT, vkeys.VK_W }, 1, true,
                     function()
                        print("Combo 'iskeypressed' activeted")
                     end)
 -- Возвращает индефикатор новой комбинации.
```
### Удаление клавиш
```lua
-- В качестве аргумента функция принимает комбинацию клавиш (удалит все совпадения) или ID хоткея.
local deleted = rkeys.unRegisterHotKey({vkeys.VK_LSHIFT, vkeys.VK_W})
if deleted then
  print("LShift + W deleted", -1)
end
```
]],
   homepage = "https://github.com/DonHomka/rkeys",
   license = "MIT"
}
dependencies = {
   "lua >= 5.1, < 5.4"
}
build = {
   type = "builtin",
   modules = {
      rkeys = "lua/rkeys.lua"
   }
}
