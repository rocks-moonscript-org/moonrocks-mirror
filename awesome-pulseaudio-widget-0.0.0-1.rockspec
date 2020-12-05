package = "awesome-pulseaudio-widget"
version = "0.0.0-1"
supported_platforms = { 'unix' }
source = {
   url = "git+ssh://git@github.com/daskol/awesome-pulseaudio-widget.git"
}
description = {
   homepage = "https://github.com/daskol/awesome-pulseaudio-widget",
   license = "BSD-3-Clause License",
   summary = "Awesome WM text widget to display volume which leverages D-Bus PulseAudio interface.",
}
dependencies = {
    'lua >= 5.1',
}
build = {
   type = "builtin",
   modules = {
      ["pulseaudio-widget"] = "pulseaudio-widget.lua"
   },
   copy_directories = {
      "doc",
   }
}
