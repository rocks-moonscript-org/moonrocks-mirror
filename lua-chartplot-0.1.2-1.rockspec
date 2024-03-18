package = 'lua-ChartPlot'
version = '0.1.2-1'
source = {
    url = 'https://framagit.org/fperrad/lua-ChartPlot/raw/releases/lua-chartplot-0.1.2.tar.gz',
    md5 = 'c21aa7d1da10cc4dd2cea1629b2d7378',
    dir = 'lua-ChartPlot-0.1.2',
}
description = {
    summary = "plot two dimensional data in an image",
    detailed = [[
lua-ChartPlot allows to create images of some simple graphs of two dimensional data.

lua-ChartPlot will plot multiple data sets in the same graph, each with some
negative or positive values in the independent or dependent variables.
Each dataset can be a scatter graph (data are represented by graph points only)
or with lines connecting successive data points, or both.
Colors and dashed lines are supported.
Axes are scaled and positioned automatically.
Each data could be associed with a tag/label.
]],
    homepage = 'https://fperrad.frama.io/lua-chartplot',
    maintainer = 'Francois Perrad',
    license = 'MIT/X11'
}
dependencies = {
    'lua >= 5.1',
--    'luagd',
}
build = {
    type = 'builtin',
    modules = {
        ChartPlot = 'src/ChartPlot.lua',
    },
    copy_directories = { 'docs', 'test' },
}
