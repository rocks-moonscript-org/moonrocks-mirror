package = "plain"
version = "0.4-1"
source = {
   url = "git://github.com/zinovyev/plain",
   tag = "v0.4",
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
      ["plain.widgets.widget"] = "src/plain/widgets/widget.lua",
      ["plain.widgets.battery"] = "src/plain/widgets/battery.lua",
      ["plain.widgets.separator"] = "src/plain/widgets/separator.lua",
      ["plain.widgets.brightness"] = "src/plain/widgets/brightness.lua",
      ["plain.widgets.volume"] = "src/plain/widgets/volume.lua",
   }
}
