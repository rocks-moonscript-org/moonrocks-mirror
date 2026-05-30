rockspec_format = "3.0"
package = "VirtualPeripheral"
version = "1.0.0-1"
source = {
   url = "git+https://github.com/54679128/VirtualPeripheral.git"
}
description = {
   summary = "一个轻量级的 ComputerCraft 外设模拟框架",
   detailed = "用于在纯 Lua 环境中构建和测试虚拟外设及其交互逻辑。允许在不依赖 Minecraft 环境的情况下，创建和测试带有物品容器、流体储罐等组件的虚拟外设，并提供与 CC 几乎一致的 peripheral API 模拟。",
   homepage = "https://github.com/54679128/VirtualPeripheral",
   license = "GNU GPL v3"
}
build = {
   type = "builtin",
   modules = {
      ["VirtualPeripheral"] = "init.lua",   
      ["VirtualPeripheral.src.config"] = "src/config.lua",
      ["VirtualPeripheral.src.ContainerComponent.Inventory"] = "src/ContainerComponent/Inventory.lua",
      ["VirtualPeripheral.src.ContainerComponent.Tank"] = "src/ContainerComponent/Tank.lua",
      ["VirtualPeripheral.src.ContainerComponent.base"] = "src/ContainerComponent/base.lua",
      ["VirtualPeripheral.src.LocalNet"] = "src/LocalNet.lua",
      ["VirtualPeripheral.src.VirtualPeripheral"] = "src/VirtualPeripheral.lua",
      ["VirtualPeripheral.src.lib.util"] = "src/lib/util.lua",
      ["VirtualPeripheral.src.peripheral"] = "src/peripheral.lua",

   }
}