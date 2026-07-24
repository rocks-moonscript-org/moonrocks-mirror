rockspec_format = "3.0"

package = "dwarfspec"
version = "0.1.3-1"

source = {
    url = "git+https://github.com/dsisco11/DwarfSpec.git",
    tag = "v0.1.3",
}

description = {
    summary = "In-process Busted automation for live DFHack interfaces.",
    detailed = [[
DwarfSpec runs Busted live-interface specifications inside DFHack while its
external command safely starts, observes, aborts, and reports those runs.
]],
    homepage = "https://github.com/dsisco11/DwarfSpec",
    license = "MIT",
}

dependencies = {
    "lua >= 5.3",
    "luasystem == 0.3.0-2",
    "busted == 2.3.0-1",
}


test_dependencies = {
    "busted >= 2.0",
}

test = {
    type = "busted",
}

build = {
    type = "builtin",
    modules = {
        ["dwarfspec.cli"] = "src/dwarfspec/cli.lua",
        ["dwarfspec.component"] = "src/dwarfspec/component.lua",
        ["dwarfspec.config"] = "src/dwarfspec/config.lua",
        ["dwarfspec.dotenv"] = "src/dwarfspec/dotenv.lua",
        ["dwarfspec.glob"] = "src/dwarfspec/glob.lua",
        ["dwarfspec.layout"] = "src/dwarfspec/layout.lua",
        ["dwarfspec.mount_context"] = "src/dwarfspec/mount_context.lua",
        ["dwarfspec.mount_adapters"] = "src/dwarfspec/mount_adapters.lua",
        ["dwarfspec.overlay_mount"] = "src/dwarfspec/overlay_mount.lua",
        ["dwarfspec.render_instrumentation"] =
            "src/dwarfspec/render_instrumentation.lua",
        ["dwarfspec.render_tracker"] = "src/dwarfspec/render_tracker.lua",
        ["dwarfspec.process"] = "src/dwarfspec/process.lua",
        ["dwarfspec.project"] = "src/dwarfspec/project.lua",
        ["dwarfspec.report"] = "src/dwarfspec/report.lua",
        ["dwarfspec.runner"] = "src/dwarfspec/runner.lua",
        ["dwarfspec.subject"] = "src/dwarfspec/subject.lua",
        ["dwarfspec.ds"] = "tests/automation/support/ds.lua",
        ["dwarfspec.automation.abort"] = "tests/automation/support/abort.lua",
        ["dwarfspec.automation.bootstrap"] = "tests/automation/support/bootstrap.lua",
        ["dwarfspec.automation.probe"] = "tests/automation/support/probe.lua",
        ["dwarfspec.automation.status"] = "tests/automation/support/status.lua",
        ["dwarfspec.automation.cleanup"] = "tests/automation/support/cleanup.lua",
        ["dwarfspec.automation.diagnostics"] = "tests/automation/support/diagnostics.lua",
        ["dwarfspec.automation.extensions"] = "tests/automation/support/extensions.lua",
        ["dwarfspec.automation.host"] = "tests/automation/support/busted_host.lua",
        ["dwarfspec.automation.lfs_adapter"] = "tests/automation/support/lfs_adapter.lua",
        ["dwarfspec.automation.output_handler"] = "tests/automation/support/output_handler.lua",
        ["dwarfspec.automation.overlay_registration"] = "tests/automation/support/overlay_registration.lua",
        ["dwarfspec.automation.pointer_adapter"] = "tests/automation/support/pointer_adapter.lua",
        ["dwarfspec.automation.project"] = "tests/automation/support/project.lua",
        ["dwarfspec.automation.scheduler"] = "tests/automation/support/scheduler.lua",
        ["dwarfspec.automation.system_adapter"] = "tests/automation/support/system_adapter.lua",
    },
    install = {
        bin = {
            dwarfspec = "bin/dwarfspec",
        },
    },
}
