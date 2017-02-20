package = "plain"
version = "0.2-1"
source = {
   url = "git://github.com/zinovyev/plain",
   tag = "v0.2",
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
      ["plain.widgets.widget"] = "src/widgets/widget.lua",
      ["plain.widgets.battery"] = "src/widgets/battery.lua",
      ["plain.widgets.separator"] = "src/widgets/separator.lua",
   }
}
