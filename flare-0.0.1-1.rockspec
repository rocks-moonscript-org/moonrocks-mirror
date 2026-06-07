package = "flare"
version = "0.0.1-1"

source = {
    url = "git+https://github.com/HeroEyad/Flare.git",
    tag = "v0.0.1"
}

description = {
    summary = "A 2D game engine for LÖVE2D that gives you everything you need in one place!",
    detailed = [[
        Flare is a lightweight 2D game engine built on top of LÖVE2D.
        It provides sprites, cameras, tweens, gamestates, signals,
        input handling, audio, save data, and more as a single requireable library.
    ]],
    homepage = "https://github.com/HeroEyad/flare",
    license = "MIT"
}

dependencies = {
    "lua >= 5.1"
}

build = {
    type = "builtin",
    modules = {
        ["flare"] = "flare.lua",
        ["flare.core.basic"] = "core/basic.lua",
        ["flare.core.gamestate"] = "core/gamestate.lua",
        ["flare.core.object"] = "core/object.lua",
        ["flare.core.signal"] = "core/signal.lua",
        ["flare.graphics.camera"] = "graphics/camera.lua",
        ["flare.graphics.shader"] = "graphics/shader.lua",
        ["flare.graphics.sprite"] = "graphics/sprite.lua",
        ["flare.graphics.text"] = "graphics/text.lua",
        ["flare.graphics.video"] = "graphics/video.lua",
        ["flare.audio.sound"] = "audio/sound.lua",
        ["flare.input.keyboard"] = "input/keyboard.lua",
        ["flare.math.math"] = "math/math.lua",
        ["flare.data.assets"] = "data/assets.lua",
        ["flare.data.json"]  = "data/json.lua",
        ["flare.data.save"]  = "data/save.lua",
        ["flare.tweens.tweens"]  = "tweens/tweens.lua",
        ["flare.utils.paths"] = "utils/paths.lua",
        ["flare.utils.utils"] = "utils/utils.lua",
        ["flare.discord"] = "discord.lua",
    }
}
