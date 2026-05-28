rockspec_format = "3.0"

local project  = { package = "PID-Controller", version = "1.0.1" }
local rockspec = { revision = 1 }
local git = {
    user   = "SoulslikeEnjoyer",
    repo   = "PID-Lua",
    branch = project.version ~= "dev" and "main" or project.version -- ternary construction
}

package = project.package
version = project.version .. "-" .. rockspec.revision

source = {
    url = "git+https://github.com/" .. git.user .. '/' .. git.repo .. ".git",
    branch = git.branch
}

description = {
    summary = "PID-Controller implemented in Lua",
    detailed = [[
        PID-Controller implemented in Lua, supporting such features as:
        - On fly modification of the controller terms' gains (Kp, Ki, Kd);
        - Weighted Proportional term calculation (on Error and on Measurement approaches mixed);
        - "Derivative Kick" prevention mechanism (Derivative on Measurement calculation approach);
        - Multidimensional values regulation;
        - etc.
        For usage, please, see examples ("StepResponse.lua" and "MultidimRegulation.lua" scripts),
        which implement movement of an inertial body along precalculated trajectory, using several differently tuned PID-Controllers.
    ]],
    license = "GPL-3",
    homepage = "https://github.com/" .. git.user .. '/' .. git.repo,
    issues_url = "https://github.com/" .. git.user .. '/' .. git.repo .. "/issues",
}

dependencies = {
    "lua >= 5.2",
    "penlight"
}

build = {
    type = "builtin",
    modules = {
        ["PID"] = "module/PID.lua",
    }
}
