package = "cc-teal"
version = "0.1.0-1"

description = {
    summary = "Teal definitions for CraftOS, because static typing is awesome!",
    homepage = "https://github.com/Deltara3/cc-teal",
    license = "MIT"
}

source = {
    url = "git+https://github.com/Deltara3/cc-teal.git"
}

dependencies = {
    "lua >= 5.1",
    "tl"
}

build = {
    type = "builtin",
    modules = {},
    install = {
        lua = {
            ["cc"] = "types/cc.d.tl",
            ["cc.global.core"] = "types/cc/global/core.d.tl",
            ["cc.global.colors"] = "types/cc/global/colors.d.tl",
            ["cc.global.commands"] = "types/cc/global/commands.d.tl",
            ["cc.global.disk"] = "types/cc/global/disk.d.tl",
            ["cc.global.fs"] = "types/cc/global/fs.d.tl",
            ["cc.global.gps"] = "types/cc/global/gps.d.tl",
            ["cc.global.help"] = "types/cc/global/help.d.tl",
            ["cc.global.http"] = "types/cc/global/http.d.tl",
            ["cc.global.io"] = "types/cc/global/io.d.tl",
            ["cc.global.keys"] = "types/cc/global/keys.d.tl",
            ["cc.global.multishell"] = "types/cc/global/multishell.d.tl",
            ["cc.global.os"] = "types/cc/global/os.d.tl",
            ["cc.global.paintutils"] = "types/cc/global/paintutils.d.tl",
            ["cc.global.parallel"] = "types/cc/global/parallel.d.tl",
            ["cc.global.peripheral"] = "types/cc/global/peripheral.d.tl",
            ["cc.global.pocket"] = "types/cc/global/pocket.d.tl",
            ["cc.global.rednet"] = "types/cc/global/rednet.d.tl",
            ["cc.global.redstone"] = "types/cc/global/redstone.d.tl",
            ["cc.global.settings"] = "types/cc/global/settings.d.tl",
            ["cc.global.shell"] = "types/cc/global/shell.d.tl",
            ["cc.global.term"] = "types/cc/global/term.d.tl",
            ["cc.global.textutils"] = "types/cc/global/textutils.d.tl",
            ["cc.global.turtle"] = "types/cc/global/turtle.d.tl",
            ["cc.global.vector"] = "types/cc/global/vector.d.tl",
            ["cc.global.window"] = "types/cc/global/window.d.tl",
            ["cc.audio.dfpwm"] = "types/cc/audio/dfpwm.d.tl",
            ["cc.base64"] = "types/cc/base64.d.tl",
            ["cc.completion"] = "types/cc/completion.d.tl",
            ["cc.expect"] = "types/cc/expect.d.tl",
            ["cc.image.nft"] = "types/cc/image/nft.d.tl",
            ["cc.pretty"] = "types/cc/pretty.d.tl",
            ["cc.require"] = "types/cc/require.d.tl",
            ["cc.shell.completion"] = "types/cc/shell/completion.d.tl",
            ["cc.strings"] = "types/cc/strings.d.tl",
            ["cc.minecraft.instrument"] = "types/cc/minecraft/instrument.d.tl",
            ["cc.minecraft.enchantment"] = "types/cc/minecraft/enchantment.d.tl",
            ["cc.minecraft.effect"] = "types/cc/minecraft/effect.d.tl",
            ["cc.minecraft.item"] = "types/cc/minecraft/item.d.tl",
            ["cc.minecraft.entity"] = "types/cc/minecraft/entity.d.tl",
            ["cc.minecraft.block"] = "types/cc/minecraft/block.d.tl"
        }
    }
}
