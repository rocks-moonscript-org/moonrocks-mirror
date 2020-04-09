package = "allonet"
version = "0.1-1"
source = {
   url = "git://github.com/alloverse/allonet",
   tag = "v0.1"
}
description = {
   summary = "Network and UI library for writing Alloverse apps",
   detailed = [[
        Alloverse's network API. It can be used as:

        * **a 3D UI API**, when by appliances to present its UI to a place's
        inhabitants, and get callbacks when users interact with it;
        * **a window manager API/game engine client API**, when used by visors
        to read the environment and inhabitants of a place in order to visualize
        it on a user's screen/headset;
        * **a game engine server API**, when used by placeserv to manage clients and
        the place's environment and inhabitants.
   ]],
   homepage = "https://alloverse.com",
   license = "MIT"
}
dependencies = {
   "lua == 5.1"
}
build = {
   type = "cmake"
}