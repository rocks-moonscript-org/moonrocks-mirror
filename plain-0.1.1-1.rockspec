package = "plain"
version = "0.1.1-1"
source = {
   url = "git://github.com/zinovyev/plain",
   tag = "v0.1.1",
}
description = {
   homepage = "https://github.com/zinovyev/plain",
   license = "MIT"
}
dependencies = {}
build = {
   type = "builtin",
   modules = {
      plain = "src/plain.lua",
      ["plain.widgets.battery"] = "src/widgets/battery.lua",
      ["plain.widgets.widget"] = "src/widgets/widget.lua"
   }
}
