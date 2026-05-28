package = "codedash"
version = "0.1.0-1"

source = {
  url = "git+https://github.com/ynishi/codedash.git",
  tag = "v0.1.0",
}

description = {
  summary = "A Lua DSL for mapping code metrics to visual perceptions.",
  detailed = [[
    codedash takes enriched AST data (structural metrics, git history,
    coverage) and transforms it into visual parameters (color, size,
    opacity, etc.) through a declarative binding pipeline.
  ]],
  homepage = "https://github.com/ynishi/codedash",
  license = "MIT",
}

dependencies = {
  "lua >= 5.1",
  "lua-cjson >= 2.1",
}

build = {
  type = "builtin",
  modules = {
    -- Top-level entry
    ["codedash"]                              = "codedash/init.lua",

    -- Model
    ["codedash.model.binding"]                = "codedash/model/binding.lua",
    ["codedash.model.index"]                  = "codedash/model/index.lua",
    ["codedash.model.node"]                   = "codedash/model/node.lua",
    ["codedash.model.normalizer"]             = "codedash/model/normalizer.lua",
    ["codedash.model.percept"]                = "codedash/model/percept.lua",

    -- Eval
    ["codedash.eval.init"]                    = "codedash/eval/init.lua",
    ["codedash.eval.classify"]                = "codedash/eval/classify.lua",
    ["codedash.eval.loader"]                  = "codedash/eval/loader.lua",
    ["codedash.eval.lua_eval"]                = "codedash/eval/lua_eval.lua",
    ["codedash.eval.report"]                  = "codedash/eval/report.lua",
    ["codedash.eval.settings"]                = "codedash/eval/settings.lua",

    -- Lib
    ["codedash.std"]                           = "codedash/std.lua",
    ["codedash.lib.range"]                    = "codedash/lib/range.lua",

    -- Presets
    ["codedash.presets.recommended"]           = "codedash/presets/recommended.lua",
    ["codedash.presets.indexes"]               = "codedash/presets/indexes.lua",
    ["codedash.presets.percepts"]              = "codedash/presets/percepts.lua",

    -- Preset indexes
    ["codedash.presets.indexes.churn"]         = "codedash/presets/indexes/churn.lua",
    ["codedash.presets.indexes.complexity"]    = "codedash/presets/indexes/complexity.lua",
    ["codedash.presets.indexes.coverage"]      = "codedash/presets/indexes/coverage.lua",
    ["codedash.presets.indexes.cyclomatic"]    = "codedash/presets/indexes/cyclomatic.lua",
    ["codedash.presets.indexes.depth"]         = "codedash/presets/indexes/depth.lua",
    ["codedash.presets.indexes.exported_score"] = "codedash/presets/indexes/exported_score.lua",
    ["codedash.presets.indexes.field_count"]   = "codedash/presets/indexes/field_count.lua",
    ["codedash.presets.indexes.lines"]         = "codedash/presets/indexes/lines.lua",
    ["codedash.presets.indexes.params"]        = "codedash/presets/indexes/params.lua",

    -- Preset normalizers
    ["codedash.presets.normalizers"]            = "codedash/presets/normalizers.lua",
    ["codedash.presets.normalizers.percentile"] = "codedash/presets/normalizers/percentile.lua",
    ["codedash.presets.normalizers.rank"]       = "codedash/presets/normalizers/rank.lua",

    -- Preset percepts
    ["codedash.presets.percepts.border"]       = "codedash/presets/percepts/border.lua",
    ["codedash.presets.percepts.clarity"]      = "codedash/presets/percepts/clarity.lua",
    ["codedash.presets.percepts.hue"]          = "codedash/presets/percepts/hue.lua",
    ["codedash.presets.percepts.opacity"]      = "codedash/presets/percepts/opacity.lua",
    ["codedash.presets.percepts.presence"]     = "codedash/presets/percepts/presence.lua",
    ["codedash.presets.percepts.size"]         = "codedash/presets/percepts/size.lua",
    ["codedash.presets.percepts.weight"]       = "codedash/presets/percepts/weight.lua",
  },
  install = {
    bin = {
      codedash = "cli.lua",
    },
  },
}
