package = "awesome-pulseaudio-widget"
version = "0.1.0-1"
supported_platforms = { 'unix' }
source = {
   url = "git+ssh://git@github.com/daskol/awesome-pulseaudio-widget.git",
   tag = "v0.1.0",
}
description = {
   homepage = "https://github.com/daskol/awesome-pulseaudio-widget",
   license = "BSD-3-Clause License",
   summary = "Awesome WM text widget to display volume which leverages D-Bus PulseAudio interface.",
   detailed = [[
        This is a simple text widget which is updates volume information as soon as
        volume level was changed. Such approch is the most preferred and the most
        efficient.

        Under the hood it connects to D-Bus daemon which is provided by PulseAudio
        daemon. After that it subscribes to `VolumeUpdated` signal on the bus. So, it
        redraw the widget (actually, textbox) as it receives an signal message.
    ]]
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
