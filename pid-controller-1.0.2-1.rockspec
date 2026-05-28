rockspec_format = "3.0"

local project  = { package = "PID-Controller", version = "1.0.2" }
local rockspec = { revision = 1 }
local git = {
    user   = "SoulslikeEnjoyer",
    repo   = "PID-Lua",
    branch = project.version ~= "dev" and "main" or "dev", -- ternary construction
    tag    = project.version ~= "dev" and "v" .. project.version or nil
}

package = project.package
version = project.version .. "-" .. rockspec.revision

source = {
    url = "git+https://github.com/" .. git.user .. '/' .. git.repo .. ".git",
    branch = git.branch,
    tag = git.tag
}

description = {
    summary = "PID-Controller implemented in Lua",
    detailed = [[
        PID-Controller implemented in Lua, supporting such features as:
        - On fly modification of the controller terms' gains (Kp, Ki, Kd);
        - Weighted calculation of the Proportional term (Proportional on Error (PonE) and Proportional on Measurement (PonM) approaches mixed);
        - "Derivative Kick" prevention mechanism (Derivative on Measurement (DonM) calculation approach);
        - Regulation of multidimensional values;
        - etc.

        For usage examples, please, see the "example" directory, containing "Trajectory", "Path" modules and "StepResponse.lua", "MultidimRegulation.lua" scripts,
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
