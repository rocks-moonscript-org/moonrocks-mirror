rockspec_format = "3.0"
package = "vdsl"
version = "0.2.0-1"

source = {
  url = "git+https://github.com/ynishi/vdsl.git",
  tag = "v0.2.0",
}

description = {
  summary = "Visual DSL for ComfyUI",
  detailed = [[
    vdsl transforms semantic scene composition into ComfyUI node graphs.
    Pure Lua. Zero dependencies.
    Catalog-driven traits, pipeline engine, judge gates, and PNG-embedded recipes.
  ]],
  homepage = "https://github.com/ynishi/vdsl",
  license = "MIT",
  labels = { "comfyui", "dsl", "image-generation", "stable-diffusion", "lua" },
}

dependencies = {
  "lua >= 5.1",
}

build = {
  type = "builtin",
  modules = {
    -- Core
    ["vdsl"]                                = "lua/vdsl/init.lua",
    ["vdsl.entity"]                         = "lua/vdsl/entity.lua",
    ["vdsl.trait"]                           = "lua/vdsl/trait.lua",
    ["vdsl.subject"]                         = "lua/vdsl/subject.lua",
    ["vdsl.weight"]                          = "lua/vdsl/weight.lua",
    ["vdsl.world"]                           = "lua/vdsl/world.lua",
    ["vdsl.cast"]                            = "lua/vdsl/cast.lua",
    ["vdsl.stage"]                           = "lua/vdsl/stage.lua",
    ["vdsl.post"]                            = "lua/vdsl/post.lua",
    ["vdsl.graph"]                           = "lua/vdsl/graph.lua",
    ["vdsl.config"]                          = "lua/vdsl/config.lua",
    ["vdsl.pipeline"]                        = "lua/vdsl/pipeline.lua",
    ["vdsl.judge"]                           = "lua/vdsl/judge.lua",
    ["vdsl.repository"]                      = "lua/vdsl/repository.lua",

    -- Catalog system
    ["vdsl.catalog"]                         = "lua/vdsl/catalog.lua",
    ["vdsl.catalogs"]                        = "lua/vdsl/catalogs/init.lua",
    ["vdsl.catalogs.atmosphere"]             = "lua/vdsl/catalogs/atmosphere.lua",
    ["vdsl.catalogs.camera"]                 = "lua/vdsl/catalogs/camera.lua",
    ["vdsl.catalogs.color"]                  = "lua/vdsl/catalogs/color/init.lua",
    ["vdsl.catalogs.color.hue"]              = "lua/vdsl/catalogs/color/hue.lua",
    ["vdsl.catalogs.color.palette"]          = "lua/vdsl/catalogs/color/palette.lua",
    ["vdsl.catalogs.effect"]                 = "lua/vdsl/catalogs/effect.lua",
    ["vdsl.catalogs.environment"]            = "lua/vdsl/catalogs/environment/init.lua",
    ["vdsl.catalogs.environment.setting"]    = "lua/vdsl/catalogs/environment/setting.lua",
    ["vdsl.catalogs.environment.time"]       = "lua/vdsl/catalogs/environment/time.lua",
    ["vdsl.catalogs.environment.weather"]    = "lua/vdsl/catalogs/environment/weather.lua",
    ["vdsl.catalogs.figure"]                 = "lua/vdsl/catalogs/figure/init.lua",
    ["vdsl.catalogs.figure.accessory"]       = "lua/vdsl/catalogs/figure/accessory.lua",
    ["vdsl.catalogs.figure.body"]            = "lua/vdsl/catalogs/figure/body.lua",
    ["vdsl.catalogs.figure.clothing"]        = "lua/vdsl/catalogs/figure/clothing.lua",
    ["vdsl.catalogs.figure.expression"]      = "lua/vdsl/catalogs/figure/expression.lua",
    ["vdsl.catalogs.figure.eyes"]            = "lua/vdsl/catalogs/figure/eyes.lua",
    ["vdsl.catalogs.figure.hair"]            = "lua/vdsl/catalogs/figure/hair.lua",
    ["vdsl.catalogs.figure.pose"]            = "lua/vdsl/catalogs/figure/pose.lua",
    ["vdsl.catalogs.figure.species"]         = "lua/vdsl/catalogs/figure/species.lua",
    ["vdsl.catalogs.lighting"]               = "lua/vdsl/catalogs/lighting.lua",
    ["vdsl.catalogs.material"]               = "lua/vdsl/catalogs/material.lua",
    ["vdsl.catalogs.quality"]                = "lua/vdsl/catalogs/quality.lua",
    ["vdsl.catalogs.style"]                  = "lua/vdsl/catalogs/style.lua",

    -- Compiler
    ["vdsl.compiler"]                        = "lua/vdsl/compiler.lua",
    ["vdsl.compilers.comfyui"]               = "lua/vdsl/compilers/comfyui/init.lua",
    ["vdsl.compilers.comfyui.decoder"]       = "lua/vdsl/compilers/comfyui/decoder.lua",
    ["vdsl.compilers.comfyui.engine"]        = "lua/vdsl/compilers/comfyui/engine.lua",
    ["vdsl.compilers.comfyui.parameters"]    = "lua/vdsl/compilers/comfyui/parameters.lua",
    ["vdsl.compilers.comfyui.preflight"]     = "lua/vdsl/compilers/comfyui/preflight.lua",
    ["vdsl.compilers.zimage"]                = "lua/vdsl/compilers/zimage/init.lua",
    ["vdsl.compilers.zimage.engine"]         = "lua/vdsl/compilers/zimage/engine.lua",
    ["vdsl.compilers.zimage.parameters"]     = "lua/vdsl/compilers/zimage/parameters.lua",

    -- Runtime
    ["vdsl.runtime.db"]                      = "lua/vdsl/runtime/db.lua",
    ["vdsl.runtime.emit"]                    = "lua/vdsl/runtime/emit.lua",
    ["vdsl.runtime.fs"]                      = "lua/vdsl/runtime/fs.lua",
    ["vdsl.runtime.png"]                     = "lua/vdsl/runtime/png.lua",
    ["vdsl.runtime.png_default"]             = "lua/vdsl/runtime/png_default.lua",
    ["vdsl.runtime.registry"]                = "lua/vdsl/runtime/registry.lua",
    ["vdsl.runtime.runpod"]                  = "lua/vdsl/runtime/runpod.lua",
    ["vdsl.runtime.serializer"]              = "lua/vdsl/runtime/serializer.lua",
    ["vdsl.runtime.session"]                 = "lua/vdsl/runtime/session.lua",
    ["vdsl.runtime.store"]                   = "lua/vdsl/runtime/store.lua",
    ["vdsl.runtime.transport"]               = "lua/vdsl/runtime/transport/init.lua",
    ["vdsl.runtime.transport.curl"]          = "lua/vdsl/runtime/transport/curl.lua",

    -- Training
    ["vdsl.training"]                        = "lua/vdsl/training/init.lua",
    ["vdsl.training.dataset"]                = "lua/vdsl/training/dataset.lua",
    ["vdsl.training.env"]                    = "lua/vdsl/training/env.lua",
    ["vdsl.training.verify"]                 = "lua/vdsl/training/verify.lua",
    ["vdsl.training.methods.kohya"]          = "lua/vdsl/training/methods/kohya.lua",
    ["vdsl.training.methods.leco"]           = "lua/vdsl/training/methods/leco.lua",
    ["vdsl.training.methods.lycoriss"]       = "lua/vdsl/training/methods/lycoriss.lua",
    ["vdsl.training.methods.sdscripts_base"] = "lua/vdsl/training/methods/sdscripts_base.lua",
    ["vdsl.training.methods.sliders"]        = "lua/vdsl/training/methods/sliders.lua",
    ["vdsl.training.methods.ti"]             = "lua/vdsl/training/methods/ti.lua",

    -- Utilities
    ["vdsl.util.id"]                         = "lua/vdsl/util/id.lua",
    ["vdsl.util.json"]                       = "lua/vdsl/util/json.lua",
    ["vdsl.util.matcher"]                    = "lua/vdsl/util/matcher.lua",
    ["vdsl.util.shell"]                      = "lua/vdsl/util/shell.lua",
  },
  copy_directories = { "examples", "tests" },
}
