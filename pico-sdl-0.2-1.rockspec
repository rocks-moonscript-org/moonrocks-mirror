package = "pico-sdl"
version = "0.2-1"

source = {
   url = "git://github.com/fsantanna/pico-sdl",
   tag = "v0.2"
}

description = {
   summary = "Lua bindings for pico-sdl, a C graphics library for 2D games",
   detailed = [[
      pico-sdl is a C graphics library designed for developing 2D games and 
      applications with educational purposes. This package provides Lua bindings
      to allow programming with pico-sdl from Lua. Features include standardized
      APIs for output operations (drawing shapes, audio), input events (timing,
      key presses), and library state management.
   ]],
   homepage = "https://github.com/fsantanna/pico-sdl",
   license = "MIT"
}

dependencies = {
   "lua >= 5.2"
}

external_dependencies = {
   SDL2 = {
      header = "SDL2/SDL.h",
      library = "SDL2"
   },
   SDL2_IMAGE = {
      header = "SDL2/SDL_image.h",
      library = "SDL2_image"
   },
   SDL2_MIXER = {
      header = "SDL2/SDL_mixer.h",
      library = "SDL2_mixer"
   },
   SDL2_TTF = {
      header = "SDL2/SDL_ttf.h",
      library = "SDL2_ttf"
   },
   SDL2_GFX = {
      header = "SDL2/SDL2_gfxPrimitives.h",
      library = "SDL2_gfx"
   }
}

build = {
   type = "builtin",
   install = {
      bin = {
         ["pico-lua"] = "lua/pico-lua"
      },
   },
   modules = {
      ["pico.init"] = "lua/pico/init.lua",
      --["pico.layout"] = "lua/layout.lua",
      pico_native = {
         sources = {
            "lua/pico.c",
            "src/pico.c",
         },
         libraries = {
            "SDL2",
            "SDL2_image", 
            "SDL2_mixer",
            "SDL2_ttf",
            "SDL2_gfx",
            "m"
         },
         incdirs = {
            "$(SDL2_INCDIR)",
            "$(SDL2_IMAGE_INCDIR)",
            "$(SDL2_MIXER_INCDIR)",
            "$(SDL2_TTF_INCDIR)",
            "$(SDL2_GFX_INCDIR)",
            "src"
         },
         libdirs = {
            "$(SDL2_LIBDIR)",
            "$(SDL2_IMAGE_LIBDIR)",
            "$(SDL2_MIXER_LIBDIR)",
            "$(SDL2_TTF_LIBDIR)",
            "$(SDL2_GFX_LIBDIR)"
         }
      }
   }
}
