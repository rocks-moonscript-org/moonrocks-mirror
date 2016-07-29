package = 'glyphify'
version = '0.1-1'

description = {
    summary = "Redraw an image using glyphs.",
    detailed = [[
        A Torch-based command-line image filter. May be used to give a usual
        photo or picture a "matrix-kind" style, with a free choice on what
        characters (glyphs) to use.
    ]],
    license = 'MIT',
    homepage = 'https://github.com/wrwrwr/glyphify',
    maintainer = 'lua@wr.waw.pl'
}

dependencies = {
    'lua >= 5.1',
    'penlight >= 1.3',
    'torch >= 7'
}

source = {
    url = 'git://github.com/wrwrwr/glyphify.git'
}

build = {
    type = 'builtin',
    modules = {
        ['glyphify.extractors.marr'] = 'glyphify/extractors/marr.lua',
        ['glyphify.fitters.base'] = 'glyphify/fitters/base.lua',
        ['glyphify.fitters.brute'] = 'glyphify/fitters/brute.lua',
        ['glyphify.fitters.mc'] = 'glyphify/fitters/mc.lua',
        ['glyphify.lapp_color'] = 'glyphify/lapp_color.lua',
        ['glyphify.torchx'] = 'glyphify/torchx.lua'
    },
    install = {
        bin = {
            extract_glyphs = 'extract_glyphs.py',
            glyphify = 'glyphify.lua'
        }
    },
    copy_directories = {'examples', 'glyphs'}
}
